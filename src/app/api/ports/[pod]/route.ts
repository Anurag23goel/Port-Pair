import { NextRequest, NextResponse } from "next/server";
import connectPool, { pool } from "@/utils/database";

export async function GET(
  req: NextRequest,
  { params }: { params: { pod: string } }
) {
  // Extract pod from params correctly
  const { pod } = await params; // Get the 'pod' property directly (no await needed)
  console.log("POD - ", pod); // Should log "Tema" (string), not { pod: "Tema" }

  // Ensure database connection is established
  try {
    await connectPool();
  } catch (error: any) {
    console.error("Failed to connect to database:", error.message);
    return NextResponse.json(
      { error: "Database connection failed", success: false },
      { status: 500 }
    );
  }

  // Execute the query
  const SQL_DATABASE_QUERY = `SELECT * FROM shipping_ports WHERE pod = ? LIMIT 1`;
  try {
    const [rows] = await pool.query(SQL_DATABASE_QUERY, [pod]);

    // Check if any results were found
    if ((rows as any[]).length === 0) {
      console.log(pod, "NOT FOUND");
      return NextResponse.json(
        { error: "Port not found", success: false },
        { status: 404 }
      );
    }

    // Return the first (and only) result
    const portData = (rows as any[])[0];
    return NextResponse.json(
      { data: portData, success: true },
      { status: 200 }
    );
  } catch (error: any) {
    console.error("Error finding Port from database - ", error.message);
    return NextResponse.json(
      { error: "Failed to fetch port details", success: false },
      { status: 500 }
    );
  }
}

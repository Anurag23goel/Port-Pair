import { NextRequest, NextResponse } from "next/server";
import connectPool, { pool } from "@/utils/database";

// ✅ Must be a named export for App Router
export async function GET(
  req: NextRequest,
  { params }: { params: Promise<{ pod: string }> }
) {
  const { pod } = await params; // ✅ No await here
  console.log("POD - ", pod);

  try {
    await connectPool();
  } catch (error: any) {
    console.error("Failed to connect to database:", error.message);
    return NextResponse.json(
      { error: "Database connection failed", success: false },
      { status: 500 }
    );
  }

  const SQL_DATABASE_QUERY = `SELECT * FROM shipping_ports WHERE pod = ? LIMIT 1`;
  try {
    const [rows] = await pool.query(SQL_DATABASE_QUERY, [pod]);

    if ((rows as any[]).length === 0) {
      return NextResponse.json(
        { error: "Port not found", success: false },
        { status: 404 }
      );
    }

    const portData = (rows as any[])[0];
    return NextResponse.json(
      { data: portData, success: true },
      { status: 200 }
    );
  } catch (error: any) {
    console.error("Error finding Port:", error.message);
    return NextResponse.json(
      { error: "Failed to fetch port details", success: false },
      { status: 500 }
    );
  }
}

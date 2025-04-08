import { NextRequest, NextResponse } from "next/server";
import connectPool, { pool } from "@/utils/database";

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const query = searchParams.get("query")?.toLowerCase() || "";

  // If no query is provided, return an empty array or an error
  if (!query) {
    return NextResponse.json([], { status: 200 }); // or { error: "Query parameter is required" }, { status: 400 }
  }

  await connectPool();

  try {
    // Parameterized query to prevent SQL injection
    const SQL_DATABASE_QUERY = `SELECT pod FROM shipping_ports WHERE LOWER(pod) LIKE ? LIMIT 10`;
    const [rows] = await pool.query(SQL_DATABASE_QUERY, [`%${query}%`]);

    // Extract PODs from the result
    const suggestions = (rows as any[]).map((row) => row.pod);

    return NextResponse.json(suggestions, { status: 200 });
  } catch (error) {
    console.error("Error while fetching suggestions:", error);
    return NextResponse.json(
      { error: "Failed to fetch suggestions" },
      { status: 500 }
    );
  }
}

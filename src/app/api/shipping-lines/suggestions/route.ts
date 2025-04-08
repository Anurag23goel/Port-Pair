import { NextRequest, NextResponse } from "next/server";
import connectPool, { pool } from "@/utils/database";

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const query = searchParams.get("query")?.toLowerCase() || "";

  if (!query) {
    return NextResponse.json([], { status: 200 });
  }

  await connectPool();

  try {
    // Fetch all non-null shipping lines where the column contains the query
    const sql = `
      SELECT shipping_lines FROM shipping_ports
      WHERE LOWER(shipping_lines) LIKE ?
    `;
    const [rows] = await pool.query(sql, [`%${query}%`]);

    const allLines = new Set<string>();

    (rows as any[]).forEach((row) => {
      const lines = row.shipping_lines
        ?.split(",")
        .map((line: string) => line.trim())
        .filter((line: string) => line.toLowerCase().includes(query));
      lines?.forEach((line: string) => allLines.add(line));
    });

    const suggestions = Array.from(allLines).slice(0, 10); // Limit to 10 results

    return NextResponse.json(suggestions, { status: 200 });
  } catch (error) {
    console.error("Error while fetching shipping line suggestions:", error);
    return NextResponse.json(
      { error: "Failed to fetch suggestions" },
      { status: 500 }
    );
  }
}

import { NextRequest, NextResponse } from "next/server";
import connectPool, { pool } from "@/utils/database";

export async function GET(
  req: NextRequest,
  context: { params: Promise<{line: string}> }
) {
  const  {line}  = await context.params;

  try {
    await connectPool();
  } catch (error: any) {
    console.error("Failed to connect to database:", error.message);
    return NextResponse.json(
      { error: "Database connection failed", success: false },
      { status: 500 }
    );
  }

  const SQL = `
    SELECT * FROM shipping_ports
    WHERE LOWER(shipping_lines) LIKE CONCAT('%', ?, '%')
    ORDER BY pod ASC
  `;

  try {
    const [rows] = await pool.query(SQL, [line.toLowerCase()]);

    if ((rows as any[]).length === 0) {
      return NextResponse.json(
        { error: "No ports found for this shipping line", success: false },
        { status: 404 }
      );
    }

    return NextResponse.json({ data: rows, success: true }, { status: 200 });
  } catch (error: any) {
    console.error("Error fetching ports by shipping line:", error.message);
    return NextResponse.json(
      { error: "Failed to fetch data", success: false },
      { status: 500 }
    );
  }
}

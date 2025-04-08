import pandas as pd

# Load the Excel file
df = pd.read_excel('./Port_Pair.xlsx')

# List of shipping line columns from your data
shipping_lines = ['HMM', 'PIL', 'ESL', 'ZIM', 'H&L', 'ALX', 'Sea marine', 'Win Win', 
                  'Sea Horse', 'Neptune', 'Barco Freight', 'Bilander', 'TSL', 'Maixon', 
                  'Econ', 'UAFL']

# Function to concatenate shipping lines
def get_shipping_lines(row):
    lines = [col for col in shipping_lines if pd.notna(row[col]) and row[col].strip()]
    return ', '.join(lines)

# Apply the function to create the shipping_lines column
df['shipping_lines'] = df.apply(get_shipping_lines, axis=1)

# Select relevant columns and rename them
df_sql = df[['POD', 'Region', 'Country', 'shipping_lines']].rename(columns={
    'POD': 'pod',
    'Region': 'region',
    'Country': 'country'
})

# Write SQL statements to a file
with open('shipping_ports.sql', 'w') as f:
    f.write("CREATE TABLE shipping_ports (\n")
    f.write("    port_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,\n")
    f.write("    pod VARCHAR(100),\n")
    f.write("    region VARCHAR(50),\n")
    f.write("    country VARCHAR(50),\n")
    f.write("    shipping_lines TEXT\n);\n\n")
    
    for index, row in df_sql.iterrows():
        # Escape single quotes and handle NaN for pod
        pod = "NULL" if pd.isna(row['pod']) else f"'{row['pod'].replace('\'', '\'\'')}'"
        # Handle NaN for region (use NULL if empty)
        region = "NULL" if pd.isna(row['region']) else f"'{row['region'].replace('\'', '\'\'')}'"
        # Handle NaN for country (use NULL if empty)
        country = "NULL" if pd.isna(row['country']) else f"'{row['country'].replace('\'', '\'\'')}'"
        # Escape single quotes for shipping_lines (NULL if empty or NaN)
        shipping_lines = "NULL" if pd.isna(row['shipping_lines']) or row['shipping_lines'] == "" else f"'{row['shipping_lines'].replace('\'', '\'\'')}'"
        
        f.write(f"INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES "
                f"({pod}, {region}, {country}, {shipping_lines});\n")

print("SQL file 'shipping_ports.sql' has been generated.")
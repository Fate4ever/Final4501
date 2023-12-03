
    CREATE TABLE IF NOT EXISTS geodf_zipcode_data (
        id SERIAL PRIMARY KEY,
        zipcode VARCHAR(10),
        geometry GEOMETRY,
        longitude FLOAT,
        latitude FLOAT
    );
    
    CREATE TABLE IF NOT EXISTS geodf_311_data (
        id SERIAL PRIMARY KEY,
        created_date DATE,
        incident_zip VARCHAR(10),
        latitude FLOAT,
        longitude FLOAT,
        geometry GEOMETRY
    );
    
    CREATE TABLE IF NOT EXISTS geodf_tree_data (
        id SERIAL PRIMARY KEY,
        tree_id INTEGER,
        latitude FLOAT,
        longitude FLOAT,
        zipcode VARCHAR(10),
        spc_common VARCHAR(100),
        geometry GEOMETRY
    );
    
    CREATE TABLE IF NOT EXISTS df_zillow_data (
        RegionID INTEGER PRIMARY KEY,
        SizeRank INT,
        RegionName VARCHAR(100),
        City VARCHAR(100),
        CountyName VARCHAR(100),
        "2023-01-31" FLOAT,
        "2023-08-31" FLOAT,
        "2023-09-30" FLOAT
    );
    
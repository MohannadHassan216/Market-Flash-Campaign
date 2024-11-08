--Example SQL data to insert into each table in the database:

-- Insert data into Client table
INSERT INTO Client (ClientId, ClientName, ClientAddress, Email, Phone, ContactPerson)
VALUES 
    ('C001', 'ABC Corp', '123 Main St', 'contact@abccorp.com', '123-456-7890', 'John Doe'),
    ('C002', 'XYZ Inc', '456 Oak Ave', 'info@xyzinc.com', '987-654-3210', 'Jane Smith');

-- Insert data into Channels table
INSERT INTO Channels (ChannelId, ChannelName, ChannelDescription)
VALUES 
    ('CH001', 'Email', 'Email Marketing Channel'),
    ('CH002', 'Social Media', 'Social Media Marketing');

-- Insert data into Locations table
INSERT INTO Locations (LocationId, LocationName, LocationDescription)
VALUES 
    ('L001', 'New York', 'NY Office'),
    ('L002', 'Los Angeles', 'LA Office');

-- Insert data into Departments table
INSERT INTO Departments (DeptId, Department, Description)
VALUES 
    ('D001', 'Marketing', 'Marketing Department'),
    ('D002', 'Sales', 'Sales Department');

-- Insert data into Employees table
INSERT INTO Employees (EmpId, FName, LName, Address, Email, Phone, Supervisor_ID, DeptId)
VALUES 
    ('E001', 'Alice', 'Brown', '789 Park Ave', 'alice@company.com', '555-1234', NULL, 'D001'),
    ('E002', 'Bob', 'Green', '101 Lake Rd', 'bob@company.com', '555-5678', 'E001', 'D002');

-- Insert data into Campaign_Types table
INSERT INTO Campaign_Types (TypeId, TypeName, TypeDescription)
VALUES 
    ('CT001', 'Awareness', 'Brand Awareness Campaign'),
    ('CT002', 'Conversion', 'Conversion Optimization Campaign');

-- Insert data into Campaigns table
INSERT INTO Campaigns (CampaignId, StartDate, EndDate, ChannelId, ClientId, Audience, Likes, Clicks, Conversions, Expenses, LocationId, Sales, CampaignTypeId, EmpId)
VALUES 
    ('CMP001', '2023-01-01', '2023-02-01', 'CH001', 'C001', 'General Audience', 1500, 300, 50, 1200.00, 'L001', 5000.00, 'CT001', 'E001'),
    ('CMP002', '2023-03-01', '2023-04-01', 'CH002', 'C002', 'Youth Segment', 2000, 400, 75, 1500.00, 'L002', 7000.00, 'CT002', 'E002');



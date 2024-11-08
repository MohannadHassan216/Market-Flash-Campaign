SQL JOIN queries to test the relationships between tables:

-- Get Campaign Details with Client and Channel Information:

SELECT 
    Campaigns.CampaignId,
    Campaigns.StartDate,
    Campaigns.EndDate,
    Client.ClientName,
    Channels.ChannelName,
    Campaigns.Audience,
    Campaigns.Likes,
    Campaigns.Clicks,
    Campaigns.Conversions,
    Campaigns.Sales
FROM 
    Campaigns
JOIN 
    Client ON Campaigns.ClientId = Client.ClientId
JOIN 
    Channels ON Campaigns.ChannelId = Channels.ChannelId;

--List Employees with Their Department and Supervisor Names:

SELECT 
    Employees.EmpId,
    Employees.FName,
    Employees.LName,
    Departments.Department,
    Supervisor.FName AS SupervisorFirstName,
    Supervisor.LName AS SupervisorLastName
FROM 
    Employees
JOIN 
    Departments ON Employees.DeptId = Departments.DeptId
LEFT JOIN 
    Employees AS Supervisor ON Employees.Supervisor_ID = Supervisor.EmpId;


--Get Campaigns with Their Types and Assigned Employees:

SELECT 
    Campaigns.CampaignId,
    Campaigns.StartDate,
    Campaigns.EndDate,
    Campaign_Types.TypeName AS CampaignType,
    Employees.FName AS EmployeeFirstName,
    Employees.LName AS EmployeeLastName
FROM 
    Campaigns
JOIN 
    Campaign_Types ON Campaigns.CampaignTypeId = Campaign_Types.TypeId
JOIN 
    Employees ON Campaigns.EmpId = Employees.EmpId;

--Summarize Campaign Performance by Location:

SELECT 
    Locations.LocationName,
    COUNT(Campaigns.CampaignId) AS TotalCampaigns,
    SUM(Campaigns.Likes) AS TotalLikes,
    SUM(Campaigns.Clicks) AS TotalClicks,
    SUM(Campaigns.Conversions) AS TotalConversions,
    SUM(Campaigns.Sales) AS TotalSales
FROM 
    Campaigns
JOIN 
    Locations ON Campaigns.LocationId = Locations.LocationId
GROUP BY 
    Locations.LocationName;


--Get Client and Campaign Performance Information,
--Provide a summary of each client’s campaigns, including likes, clicks, and conversions.

SELECT 
    Client.ClientName,
    Campaigns.CampaignId,
    Campaigns.Audience,
    Campaigns.Likes,
    Campaigns.Clicks,
    Campaigns.Conversions,
    Campaigns.Sales
FROM 
    Client
JOIN 
    Campaigns ON Client.ClientId = Campaigns.ClientId;





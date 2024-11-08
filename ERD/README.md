# Market Flash ERD (Entity Relationship Diagram)

This document provides an overview of the Market Flash database structure and its relationships between different entities. The database contains several key tables for managing clients, campaigns, employees, channels, locations, and more.

## Tables

### 1. **Client**
The `Client` table stores information about clients participating in campaigns.

| Field         | Type        | Constraints  |
|---------------|-------------|--------------|
| `ClientId`    | VARCHAR(20) | PK, NN       |
| `ClientName`  | VARCHAR(200)| NN           |
| `ClientAddress` | VARCHAR(200)| NN         |
| `Email`       | VARCHAR(20) | NN, UNIQUE   |
| `Phone`       | VARCHAR(20) | NN           |
| `ContactPerson` | VARCHAR(20)| NN          |

### 2. **Channels**
The `Channels` table contains information about different marketing channels.

| Field           | Type        | Constraints  |
|-----------------|-------------|--------------|
| `ChannelId`     | VARCHAR(20) | PK, NN       |
| `ChannelName`   | VARCHAR(20) |              |
| `ChannelDescription` | VARCHAR(20) |        |

### 3. **Locations**
The `Locations` table contains details of the locations where campaigns may be held.

| Field            | Type        | Constraints  |
|------------------|-------------|--------------|
| `LocationId`     | VARCHAR(20) | PK, NN       |
| `LocationName`   | VARCHAR(20) | NN           |
| `LocationDescription` | VARCHAR(20) |         |

### 4. **Employees**
The `Employees` table stores employee information, including supervisors and departments.

| Field           | Type        | Constraints  |
|-----------------|-------------|--------------|
| `EmpId`         | VARCHAR(20) | PK, NN       |
| `FName`         | VARCHAR(20) | NN           |
| `LName`         | VARCHAR(20) | NN           |
| `Address`       | VARCHAR(20) | NN           |
| `Email`         | DATETIME    | NN           |
| `Phone`         | DATETIME    | NN           |
| `SupervisorId`  | VARCHAR(20) | FK (ref: EmpId) |
| `DeptId`        | VARCHAR(20) | FK (ref: Departments.DeptId) |

### 5. **Campaigns**
The `Campaigns` table tracks marketing campaigns, including the campaign details and performance metrics.

| Field               | Type        | Constraints  |
|---------------------|-------------|--------------|
| `CampaignId`        | VARCHAR(20) | PK, NN       |
| `StartDate`         | DATETIME    | NN           |
| `EndDate`           | DATETIME    | NN           |
| `ChannelId`         | VARCHAR(20) | FK (ref: Channels.ChannelId) |
| `ClientId`          | VARCHAR(20) | FK (ref: Client.ClientId) |
| `Audience`          | VARCHAR(20) | NN           |
| `Likes`             | INT         | NN           |
| `Clicks`            | INT         | NN           |
| `Conversions`       | INT         | NN           |
| `Expenses`          | FLOAT       | NN           |
| `LocationId`        | VARCHAR(20) | FK (ref: Locations.LocationId) |
| `Sales`             | FLOAT       |              |
| `CampaignTypeId`    | VARCHAR(20) | FK (ref: CampaignTypes.TypeId) |
| `EmpId`             | VARCHAR(20) | FK (ref: Employees.EmpId) |

### 6. **CampaignTypes**
The `CampaignTypes` table stores information about different types of campaigns.

| Field             | Type        | Constraints  |
|-------------------|-------------|--------------|
| `TypeId`          | VARCHAR(20) | PK, NN       |
| `TypeName`        | VARCHAR(20) | NN           |
| `TypeDescription` | VARCHAR(20) |              |

### 7. **Departments**
The `Departments` table holds information about employee departments.

| Field           | Type        | Constraints  |
|-----------------|-------------|--------------|
| `DeptId`        | VARCHAR(20) | PK, NN       |
| `Department`    | VARCHAR(20) | NN           |
| `Description`   | VARCHAR(20) |              |

---

## Relationships

The relationships between the tables are as follows:

- **Client** has many **Campaigns** (1-to-many relationship)  
- **Campaign** belongs to **Client** and **Channel** (many-to-1 relationship)  
- **Campaign** has a **Location** (many-to-1 relationship)  
- **Employee** works on many **Campaigns** (1-to-many relationship)  
- **Campaign** has a **CampaignType** (many-to-1 relationship)  
- **Employee** may have a **Supervisor** (self-referencing relationship in **Employees** table)  
- **Employee** works in a **Department** (many-to-1 relationship)  

---

## Diagram

[Insert ERD diagram image here]

---

This schema supports efficient management of campaigns and employee roles within a client-focused marketing system.



# BidNile — Project Notes

## 1. Database Schemas

I divided the database into four schemas to organize the tables by their purpose.

- **UserManagement:** COUNTRY, CITY, MEMBER, WALLET, EMPLOYEE.
- **Inventory:** WAREHOUSE, CATEGORY, ITEM, ITEMPHOTO.
- **Auctions:** AUCTION, BID.
- **Marketing:** FOLLOWEDAUCTION.

This makes the database easier to organize and maintain.

## 2. Relationships

- **One-to-One:** MEMBER and WALLET. The MemberId in WALLET is both its Primary Key and Foreign Key.
- **One-to-Many:** One CITY can have many MEMBERS. I used Foreign Keys on the many side.
- **Many-to-Many:** MEMBER and AUCTION through FOLLOWEDAUCTION, using a composite Primary Key.
- **Recursive:** MEMBER can refer another MEMBER using ReferredByMemberId. CATEGORY can also have a parent category.
- **Circular:** WAREHOUSE and EMPLOYEE reference each other through ManagerId and WarehouseId.
- **Weak Entity:** ITEMPHOTO depends on ITEM. Its Primary Key contains ItemId and Position.

## 3. Data Types

- **GUID for MemberId:** Members have unique identifiers that can be generated independently.
- **BIGINT for BidId:** The BID table may contain many records, so BIGINT provides a larger range.
- **FLOAT for GPS:** Latitude and Longitude are approximate geographic values.
- **DECIMAL for money:** It stores financial values accurately.
- **DATETIMEOFFSET for auctions:** It stores date, time, and timezone offset.

## 4. Circular Relationship

I could not create both Foreign Keys inside the CREATE TABLE statements because each table references the other.

I created both tables first, then added one of the Foreign Keys using ALTER TABLE.

## 5. Data Import Order

I used the Import and Export Wizard to add the data.

The order was:

1. COUNTRY
2. CITY
3. MEMBER
4. CATEGORY
5. WALLET
6. WAREHOUSE
7. EMPLOYEE
8. ITEM
9. ITEMPHOTO
10. AUCTION
11. BID
12. FOLLOWEDAUCTION

I followed this order because parent records must exist before inserting dependent records.

For the circular relationship, I temporarily disabled the warehouse manager constraint, imported the required data, then enabled and checked the constraint again.

## 6. ALTER TABLE Errors

### Task 3.6 — MaxItems

I tried to change the MaxItems data type, but SQL Server did not allow it because a CHECK constraint depended on that column.

I fixed it by dropping the constraint, changing the data type to SMALLINT, and adding the CHECK constraint again.

### Task 3.11 — IsVerified

I could not drop IsVerified because it had a Default Constraint.

I added VerifiedAt first, then dropped the Default Constraint and removed IsVerified.

## 7. LeetCode 238 — Product of Array Except Self

I solved the problem using two approaches.

### 5.1 — Prefix and Suffix Arrays

- Time Complexity: O(n)
- Space Complexity: O(n)

I used two arrays:
- prefix[] stores the product of elements before each index.
- suffix[] stores the product of elements after each index.

Then I multiplied both values to get the result.

### 5.2 — O(1) Extra Space

- Time Complexity: O(n)
- Space Complexity: O(1) extra space.

I used the output array to store the prefix products, then multiplied each position by the suffix product.

I did not use division in either solution.

### Hand Trace

Input: `[1, 2, 3, 4]`

| Index | Number | Prefix | Suffix | Result |
|---|---:|---:|---:|---:|
| 0 | 1 | 1 | 24 | 24 |
| 1 | 2 | 1 | 12 | 12 |
| 2 | 3 | 2 | 4 | 8 |
| 3 | 4 | 6 | 1 | 6 |

Output: `[24, 12, 8, 6]`
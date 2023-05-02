SELECT*
FROM [Portfolio Projects].dbo.[Nashville housing]



---Populates Propery Address Data
SELECT PropertyAddress
FROM [Portfolio Projects].dbo.[Nashville housing]


SELECT PropertyAddress
FROM [Portfolio Projects].dbo.[Nashville housing]

SELECT 
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1) as Address
FROM [Portfolio Projects].dbo.[Nashville housing]
 
SELECT
SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress)+1, LEN(PropertyAddress))
FROM [Portfolio Projects].dbo.[Nashville housing]
 

 ALTER TABLE [Portfolio Projects].dbo.[Nashville housing]
 ADD Address Varchar(50);

 ALTER TABLE [Portfolio Projects].dbo.[Nashville housing]
 ADD CITY VARCHAR(50);
 
  UPDATE [Portfolio Projects].dbo.[Nashville housing]
  SET SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1)
FROM [Portfolio Projects].dbo.[Nashville housing]=City



 UPDATE [Portfolio Projects].dbo.[Nashville housing]
 SET Address=SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1)
FROM [Portfolio Projects].dbo.[Nashville housing]

UPDATE [Portfolio Projects].dbo.[Nashville housing]
SET CITY=SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress)+1, LEN(PropertyAddress))
FROM [Portfolio Projects].dbo.[Nashville housing]

     OR

SELECT
PARSENAME(REPLACE(PropertyAddress, ',', '.' ), 2),
PARSENAME(REPLACE(PropertyAddress, ',', '.' ), 1)
FROM [Portfolio Projects].dbo.[Nashville housing]


---Changing Y and N into yes and No in SoldAsVacant
 SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
 FROM [Portfolio Projects].dbo.[Nashville housing]
 Group By (SoldAsVacant)

 SELECT SoldASVacant,
 CASE
  WHEN SoldAsVacant='N' THEN 'No'
  WHEN SoldAsVacant='Y' THEN 'Yes'
  ELSE SoldAsVacant
  End
FROM [Portfolio Projects].dbo.[Nashville housing]

UPDATE [Portfolio Projects].dbo.[Nashville housing]
SET SoldAsVacant=
 CASE
  WHEN SoldAsVacant='N' THEN 'No'
  WHEN SoldAsVacant='Y' THEN 'Yes'
  ELSE SoldAsVacant
  End
FROM [Portfolio Projects].dbo.[Nashville housing]


---REMOVE DUPLICATES

 SELECT DISTINCT
FROM [Portfolio Projects].dbo.[Nashville housing]
ORDER BY [UniqueID ]
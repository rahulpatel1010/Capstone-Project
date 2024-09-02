select count(*) from western_countries_financial;
 --1) Product wise sales 
select Product,sum(Sales) as Total_Sales from Western_Countries_Financial
group by Product ;

 --2) Segment wise Profit
select Segment,sum(Profit) as Total_Profit from Western_Countries_Financial
group by Segment;

 --3) Yearly sales
select Year,sum(Sales) as Year_wise_sales from Western_Countries_Financial
group by Year;

--4) Country wise sales
select Country,sum(Sales) as Country_wise_sales from Western_Countries_Financial
group by Country;

--5) Quarterly Profit & Sales Overview
select Quarter,sum(Sales) as Quarter_wise_sales,sum(profit) as Quarter_wise_profit from Western_Countries_Financial
group by Quarter ;

--6) Yearly Profit
select Year,sum(Profit) as Year_wise_Profit from Western_Countries_Financial
group by Year;

--7) Top 2 countries
select Top 2 Country,Country  ,sum(Profit) as Country_wise_Profit from Western_Countries_Financial
group by Country
order by Country_wise_Profit desc;

--8) Bottom 3 products
select Product,sum(profit) as profit from Western_Countries_Financial
group by Product 
order by profit asc
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;

--9) Product wise discount
select Product,sum(Discounts) as Discounts from Western_Countries_Financial
group by Product 

--10) Year-Over-Year Units Sold
select Year,sum(Units_Sold) as Units_Sold from Western_Countries_Financial
group by Year 

--11) Sales by Segment and Product
select Product,segment ,sum(Sales) as Sales from Western_Countries_Financial
group by Product, segment
order by segment,sales;

--12) Profit by Segment and Product
select Product,segment ,sum(Profit) as Profit from Western_Countries_Financial
where Segment='enterprise' and Product ='Amarilla'
group by Product, segment
order by segment,Profit;















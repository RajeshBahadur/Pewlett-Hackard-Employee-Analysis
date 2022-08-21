# Pewlett-Hackard-Employee-Analysis

#Overview of the analysis:
We have been provided with the employees information of Pwelett Hackard in six csv files containing information about employees name, number, date of joining, birth date, departments and 
the department managers. The analysis was focussed on creating a database to link various tables(files) to determine number of employees who will be due for the retirement so that Pwelett
Packard human resource department can make a plan to hire new employees to fill the positions of the employees who will be retiring. 
I have used postgres database to create employees database and ran quries to generate information to find list of employees who will be retring and further classifying those empployees based 
on the department they work. I have used enttity relationship diagram (ERD) to understand  and establish relationship amoung six files and design appropriate database.
Apart from finding accurate number of employees who will be retiring based on their birth date, I have ran a query to find employees who are eligible for mentorhip program who are currently 
working in the organization. 

  

#Results:
 # Based on the retirement_title table, there were 443,308 employees which included employees who are no longer working in the organization. In order to get the relevent information for Bobby
   to determine list of employees who are currently working, I have pulled the information about the employees who are active employees and due for retriement in the table unique_title.
   From the unique_title table, I have found that in total 240,124 number of employees are due for retirement based on the birth date.
 # The unique_title table is further filtered to get the summary of employees department wise. This table is named as retiring_title which contains summary of all employees who are
   due to retire and department where they currently work.
 # The final requirement  is to find list of employees who are eligible for mentorship based on their birth date and who are currently employed in the organization. The total number of 
   employees who are eligible for mentorship is 1,549.	



Summary:

# The analysis reveals that, Pewlett Hackard will be flooded with Tsunami of employees who will be retiring soon( 240K), this will be a huge number for HR department to work on, the information
available from the analysis will help HR department to plan their future course of action.
#The analysis also reveals that retirement ready employees born between Jan 1965 to Dec 2065 and still active in the organization can be selected as mentor to coach new joiners.

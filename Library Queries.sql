use[Library]

-- نام کلیه کتایهای را بیابید که توسط کد 8001 امانت گرفته شده اند

--select Book.B_Name from Book inner join Loan on Book.Book_ID=Loan.Book_ID where Loan.Std_ID=8001



select Student.Student_ID from Student inner join loan on Student_ID=Std_ID where Student.Sname= 'آرش راد'
--1- نام کلیه کتایهای را بیابید که توسط "علی راد " امانت گرفته شده اند

select یهسفهدBook.B_Name from Book inner join Loan on Book.Book_ID=Loan.Book_ID where loan.Std_ID in
( select student.Student_ID from Student where Student.Sname like N'آرش راد')

-- 2- کتاب شماره 1404 تا کنون چند بار از کتابخانه امانت گرفته شده است؟

select count(Loan.Book_ID) from Loan where Book_ID=1404

3-نام کتایها را بیابید که تا کنون بیش از 1  بار امانت گرفته شده اند؟
select distinct (book.B_Name ) from book inner join loan on book.Book_ID=loan.Book_ID where loan.Book_ID in
(select	loan.Book_ID from loan group by Book_ID having  (count( loan.Book_ID) )>1 ) 

--4-نام کتابهای رابیابید که توسط کلیه دانشجویان رشته کامپیوتر امانت گرفته شده اند

select distinct (Book.B_Name) from Book,Loan,Student where Book.Book_ID=Loan.Book_ID

 and Loan.Std_ID=Student.Student_ID and Student.filed=N'کامپیوتر'
 
--5- نام دانشجویانی را بیابید که تا کنون هیچ کتابی را به امانت نگرفته اند

select Student.Sname from Student where Student.Student_ID not in (select Loan.Std_ID from loan)

-- 6- نام کتابهای پایگاه دادهای را بیابید که نویسنده آنها Cornel

select Book.B_Name from book where Book.Author='coronel' 








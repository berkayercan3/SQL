use Student_Info_System;

--1. kendini ogrenci olarak ekle
--insert into Students values ('Berkay' , 'Ercan' , '2002-03-20' , 'bercan644@gmail.com');

--2.satir silme
--delete from Students 
--where StudentID=12

--3. eklenen kisinin mail adresini degistirelim
--update Students
--set Email = 'bercan644upd@gmail.com'
--where StudentID = 13

--4. Kodu MIM olan bölümün isminin Interior Architecture olarak güncellenmesi
--update Department
--set DeptName = 'Interior Architecture'
--where DeptID = 'MIM'

--5. Ismi Nothing olan dersin tüm derslerin silinmesi
--delete from Courses
--where CourseName = 'Nothing'

--6.Ismi test olan tek bir nitelikten olusan (ad) bir tablo olustur:
--create table test(
--	isim varchar(255),
--);

--7. olusturulan test tablosuna emre ve muhammed isimlerini ekle
--Insert into test values('emre');
--Insert into test values('Muhammed');

--8. Test tablosundaki tum degerlerin silinmesi 
--truncate table test;

--9. Test tablosuna yeni bir soyisim isminde nitelik eklenmesi
--alter table test
--add soyisim varchar(255)

--10. Test tablosunun tamamen silinmesi
--drop table test

--9. Ögrencilerin tüm bilgilerinin listelenmesi
--select * from Students

--10. Ismi Emre olan ögrencinin tüm bilgilerinin listelenmesi
--select * from Students
--where FirstName = 'Emre'

--11. Ismi Emre olan öðrencilerin yalnýzca mail adreslerinin listelenmesi:
--select Email from Students
--where FirstName = 'Emre'

--12. Siniftaki öðrencilerin isimlerini tekrar etmeyen bir biçimde listelenmesi:
--select distinct FirstName
--from Students

--13. Öðrencilerin isim ve soy isimlerini birleþtirerek 
-- tek bir AdSoyad sütunda gösterilmesi
--select FirstName + ' ' + LastName as AdSoyad
--from Students

--14. Maasi 1000 ile 5000 tl arasinda olan hocalarin isim ve soyisim bilgileri
--Select FirstName + LastName 
--from Instructors
--where 5000>=Salary and Salary>=1000

--15. Bas harfi A ile G arasindaki herhangi bir harf ile baslayan hocalarýn
-- tüm bilgilerinin listelenmesi:
--select  *
--from Instructors
--where FirstName between 'A' and 'G'

--16. Bilgisayar mühendisliði bölümünde çalisip maasi 4100 tl'nin üstünde olan
-- hocalarýn isim, soyisim ve maaþ bilgilerinin listelenmesi:
--select FirstName, LastName ,salary
--from Instructors
--where DepartmentID = 'BIM'

--17. Bilgisayar mühendisliði bölümündeki hocalarýn maaþlarýna 1000 tl zam yapýldýðý senaryoda
-- hocalarýn isim, soyisim ve güncel maaslarýný listeleyin
--select FirstName , LastName, Salary + 1000
--from Instructors
--where DepartmentID = 'BIM'

--18. Bilgisayar müh. hocalarýn maaþlarýna %10 zam yapýlsaydý yine firstname
-- Lastname ve salary bilgileri ne olurdu
--select FirstName , LastName , Salary * 1.1
--from Instructors
--where DepartmentID = 'BIM'

--19. Üniversite içerisinde kaç adet ders vardýr?
--select COUNT(*)
--from Courses

--20. Üniversite kaç adet ders vardýr fakat tekrarlayýný getirme:
--Select COUNT(Distinct CourseName)
--from Courses

--21. Bilgisayar müh. bölümünde açýlan toplam kaç adet ders vardýr:
--Select count(DepartmentID)
--from Courses
--where DepartmentID = 'BIM'

--22. Ismi E ile baþlayan öðrencilerin tüm bilgilerinin listelenmesi
--select * 
--from Students
--where FirstName like 'E%'

--23. Isimleri E, A, veya M ile baslayan öðrencilerin tüm bilgileri
--select * 
--from Students
--where FirstName like'[E,A,M]%'

--24. Ismi Alper veya Cihan olan tüm hocalarýn tüm bilgilerinin listesi:
--select *
--from Instructors
--where FirstName IN ('Alper','Cihan')

--25. Bölümlerde acilan toplam ders sayisinin [Bölüm Kodu, Ders Sayisi]
--formatinda gösterilmesi:
--select DepartmentID as 'BölümKodu', COUNT(CourseName) as 'Ders Sayisi'
--from Courses
--group by DepartmentID --Yani aynı DepartmentID değerine sahip tüm satırlar bir grup oluşturur.

--26. Hocalara verilen en yüksek maaþýn deðeri nedir?
--select max(Salary) as 'Max Maas '
--from Instructors

--27. Hocalara toplam ödenenen maas miktari nedir?
--select SUM(Salary) as 'Toplam Maas'
--from Instructors

--28. Hocalara ödenen ortalama maaþ nedir?
--select AVG(Salary) as 'Ortalama Maas'
--from Instructors

--29. En yüksek maaþý alan hocanýn tüm bilgilerinin listelenmesi: (ic ice) 
/*
select *
from Instructors
where Salary IN (
	select max(Salary)
	from Instructors
);
*/

--30. Ünv içerisinde ortalama maastan daha yüksek maas alan hocalarýn tüm bilgileri
--select * 
--from Instructors
--where Salary >= (select  Avg(Salary) from Instructors )

/*31. Bölüm içerisinde hocalara verilen maaþlarýn toplamýnýn 6.300 TL'den 
fazla olan bölümleri ve bu bölümlerde verilen toplam maaþlarýn 
[Bölüm Kodu, ToplamMaaþ] formatýnda listelenmesi

select DepartmentID as 'BolumKodu' , Sum(Salary) as 'ToplamMaas'
from Instructors
Group By DepartmentID
having Sum(Salary) >= 6300 
*/

--32. Ögrenci basina kaç dersten AA aldiginin [StdID, TotalAA] formatinda gösterilmesi,
--select StID as 'StdID', COUNT(Grade) as 'TotalAA'
--from Enrollments
--where Grade='AA'
--group by StID

--33. Bölümlere göre en düsük baaslarin belirlenmesi:
--select DepartmentID, MIN(Salary)
--from Instructors
--group by DepartmentID

--34. Herhangi bir bölümde çalismayan hocalarin tüm bilgileri
--select *
--from Instructors
--where DepartmentID is null

--35. Hocalari maaslarina göre artan sirada siralayarak tüm bilgileri
--select *
--from Instructors
--order by Salary ASC --Azalan sira DESC

--36. En yüksek maas alan ilk 5 hocanin tüm bilgilerinin listesi:
--select top 5 *
--from Instructors
--order by Salary desc

--37. Hocalarin isim, soyisim, maas, çalistigi bölüm ve bölümün adreslerinin listesi:
--Select I.FirstName, I.LastName, I.Salary, D.DeptName, D.Addr
--from Instructors I, Department D
--where I.DepartmentID = D.DeptID

--38. Hocalarin ayni bilgilerini listele, Fakat hiçbir bölümde çalismayan hocalar null donsun 
--Select I.FirstName, I.LastName, I.Salary, D.DeptName, D.Addr
--from Instructors I 
--Left outer join  Department D 
--on D.DeptID = I.DepartmentID --ON, genellikle bir JOIN ifadesiyle birlikte
							 --kullanılır ve tabloların hangi sütunlar üzerinden eşleştirileceğini belirtir.

--37. Hocalarin ayni bilgilerini listele, fakat bölümde hocasi olmayan bölümlere iliskin bilgileri de getir:
--Select I.FirstName, I.LastName, I.Salary, D.DeptName, D.Addr
--from Instructors I 
--Right outer join Department D
--ON I.DepartmentID = D.DeptID;

--38. Bölümde hoca çalisip çalismasa da veya hoca herhangi bir bölümde çalisip
--çalismasa da ayni bilgilerin listesi:
--Select I.FirstName, I.LastName, I.Salary, D.DeptName, D.Addr
--from Instructors I 
--full outer join Department D
--ON I.DepartmentID = D.DeptID;

--39. 1 numarali ögrencinin notlarinin [ÖgrenciAd, Soyad, Ders, Harf] formatinda gösterilmesi:
--select S.FirstName as OgrenciAd , S.LastName as Soyad , C.CourseName as Ders , E.Grade as Harf
--from Students S , Courses C , Enrollments E
--where E.CID = C.CourseID and E.StID = S.StudentID and S.StudentID =1

--40. En az 1 adet AA notuna sahip olan ögrencilerin ad ve soyadlari [FullName] olarak listelenmesi:
--select (S.FirstName + ' ' + S.LastName) as FullName
--from Students S, Enrollments E
--where E.StID = S.StudentID and E.Grade = 'AA'

--41. Tüm hoca ve ögrenci isimlerinin [isimler] olarak tekrarlanmayan bir biçimde Listelenmesi:
--select FirstName S
--from Students S
--union -- 2 tane sorguyu birlestirir ve tekrar eden kisimlari otomotik olarak kaldirir
--Select FirstName I
--from Instructors I

--42. Öðrencilerde olup hocalarda olmayan isimlerin listesi:
--select FirstName
--from Students
--except
--select FirstName
--from Instructors

--43. Hem hocalarda hem de öðrencilerde ortak olarak gözüken isimler
--select FirstName
--from Students
--intersect
--select FirstName
--from Instructors










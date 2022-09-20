USE [DersKayit]
GO
/****** Object:  StoredProcedure [dbo].[Etutumuz]    Script Date: 20.09.2022 18:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Etutumuz]
as
Select ID,DERSAD,(TBLOGRETMEN.AD+' '+TBLOGRETMEN.SOYAD) as 'Öğretmen',TARIH,SAAT,DURUM
From TBLETUT

inner join TBLDERSLER
on
TBLETUT.DERSID=TBLDERSLER.DERSID

inner join TBLOGRETMEN
on
TBLETUT.OGRETMENID=TBLOGRETMEN.OGRTID


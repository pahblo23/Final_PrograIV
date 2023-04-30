/*******************************************************************************
Proyecto Final de Programacion IV
Grupo 2
Sistema para el manejo de inventarios de tienda de computo

********************************************************************************
   Eliminar base de datos si existe
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'CompuStore')
BEGIN
	ALTER DATABASE [CompuStore] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [CompuStore] SET ONLINE;
	DROP DATABASE [CompuStore];
END
GO

/****** Object:  Database [CompuStore]    Script Date: 29/04/2023 08:40:29 a. m. ******/
CREATE DATABASE [CompuStore]
GO

USE [CompuStore]
GO
/****** Object:  Table [dbo].[Distribucion]    Script Date: 29/04/2023 08:40:29 a. m. ******/

CREATE TABLE [dbo].[Distribucion](
	[id_Distribucion] [int] NOT NULL,
	[id_Equipo] [int] NULL,
	[id_usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Distribucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discos]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discos](
	[id_Disco] [int] NOT NULL,
	[tipo_Disco] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Disco_discos] PRIMARY KEY NONCLUSTERED 
(
	[id_Disco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[equipos]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipos](
	[id_Equipo] [int] NOT NULL,
	[estado_Id] [int] NULL,
	[torre_Id] [int] NULL,
	[teclado_Id] [int] NULL,
	[raton_Id] [int] NULL,
	[otro_Id] [int] NULL,
	[disco_Id] [int] NULL,
	[memoria_Id] [int] NULL,
	[monitor_Id] [int] NULL,
 CONSTRAINT [PK_id_Equipo_equipos] PRIMARY KEY NONCLUSTERED 
(
	[id_Equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[id_Estado] [int] NOT NULL,
	[tipo_Estado] [nvarchar](30) NULL,
	[id_Equipo] [int] NULL,
 CONSTRAINT [PK_id_Estado_estados] PRIMARY KEY NONCLUSTERED 
(
	[id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memorias]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memorias](
	[id_Memoria] [int] NOT NULL,
	[tipo_Memoria] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Memoria_memorias] PRIMARY KEY NONCLUSTERED 
(
	[id_Memoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monitores]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monitores](
	[id_Monitor] [int] NOT NULL,
	[tipo_Monitor] [nvarchar](30) NULL,
	[marca_Monitor] [nvarchar](30) NULL,
	[modelo_Monitor] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Monitor_monitores] PRIMARY KEY NONCLUSTERED 
(
	[id_Monitor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otros]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otros](
	[id_Otro] [int] NOT NULL,
	[tipo_Otro] [nvarchar](30) NULL,
	[marca_Otro] [nvarchar](30) NULL,
	[modelo_Otro] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Otro_otros] PRIMARY KEY NONCLUSTERED 
(
	[id_Otro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ratones]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ratones](
	[id_Raton] [int] NOT NULL,
	[tipo_Raton] [nvarchar](30) NULL,
	[marca_Raton] [nvarchar](30) NULL,
	[modelo_Raton] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Raton_ratones] PRIMARY KEY NONCLUSTERED 
(
	[id_Raton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id_Rol] [int] NOT NULL,
	[rol] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Rol_roles] PRIMARY KEY NONCLUSTERED 
(
	[id_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE TABLE [dbo].[sexo](
--	[id_Sexo] [char](1) NOT NULL,
--	[genero] [nvarchar](30) NULL,
-- CONSTRAINT [PK_id_Sexo_sexo] PRIMARY KEY NONCLUSTERED 
--(
--	[id_Sexo] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table [dbo].[teclados]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teclados](
	[id_Teclado] [int] NOT NULL,
	[tipo_Teclado] [nvarchar](30) NULL,
	[marca_Teclado] [nvarchar](30) NULL,
	[modelo_Teclado] [nvarchar](30) NULL,
 CONSTRAINT [PK_id_Teclado_teclados] PRIMARY KEY NONCLUSTERED 
(
	[id_Teclado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[torres]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[torres](
	[id_Torre] [int] NOT NULL,
	[marca] [nvarchar](30) NULL,
	[modelo] [nvarchar](30) NULL,
	[id_Disco] [int] NULL,
	[id_Memoria] [int] NULL,
 CONSTRAINT [PK_id_Torre_equipos] PRIMARY KEY NONCLUSTERED 
(
	[id_Torre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int]  NOT NULL,
	[nombre] [nvarchar](20) NULL,
	[telefono] [nvarchar](20) NULL,
	[rol_id] [int] NULL,
	[email] [nvarchar](50) NULL
 CONSTRAINT [PK_usuario_id_usuario] PRIMARY KEY NONCLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO











ALTER TABLE [dbo].[Distribucion]  WITH CHECK ADD  CONSTRAINT [FK_equipos_id_Equipo] FOREIGN KEY([id_Equipo])
REFERENCES [dbo].[equipos] ([id_Equipo])
GO
ALTER TABLE [dbo].[Distribucion] CHECK CONSTRAINT [FK_equipos_id_Equipo]
GO
ALTER TABLE [dbo].[Distribucion]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_id_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[Distribucion] CHECK CONSTRAINT [FK_usuarios_id_usuario]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_discos_id_Disco] FOREIGN KEY([disco_Id])
REFERENCES [dbo].[discos] ([id_Disco])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_discos_id_Disco]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_estados_id_Estado] FOREIGN KEY([estado_Id])
REFERENCES [dbo].[estados] ([id_Estado])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_estados_id_Estado]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_memorias_id_Memoria] FOREIGN KEY([memoria_Id])
REFERENCES [dbo].[memorias] ([id_Memoria])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_memorias_id_Memoria]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_monitores_id_Monitor] FOREIGN KEY([monitor_Id])
REFERENCES [dbo].[monitores] ([id_Monitor])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_monitores_id_Monitor]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_otros_id_Otro] FOREIGN KEY([otro_Id])
REFERENCES [dbo].[otros] ([id_Otro])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_otros_id_Otro]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_ratones_id_Raton] FOREIGN KEY([raton_Id])
REFERENCES [dbo].[ratones] ([id_Raton])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_ratones_id_Raton]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_teclados_id_Teclado] FOREIGN KEY([teclado_Id])
REFERENCES [dbo].[teclados] ([id_Teclado])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_teclados_id_Teclado]
GO
ALTER TABLE [dbo].[equipos]  WITH CHECK ADD  CONSTRAINT [FK_torres_id_Torre] FOREIGN KEY([torre_Id])
REFERENCES [dbo].[torres] ([id_Torre])
GO
ALTER TABLE [dbo].[equipos] CHECK CONSTRAINT [FK_torres_id_Torre]
GO




ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_roles_rol_id] FOREIGN KEY([rol_id])
REFERENCES [dbo].[roles] ([id_Rol])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_roles_rol_id]
GO


ALTER TABLE [dbo].[torres]  WITH CHECK ADD  CONSTRAINT [FK_Discs_id_Disco] FOREIGN KEY([id_Disco])
REFERENCES [dbo].[discos]([id_Disco])
GO
ALTER TABLE [dbo].[torres] CHECK CONSTRAINT [FK_Discs_id_Disco]
GO

ALTER TABLE [dbo].[torres]  WITH CHECK ADD  CONSTRAINT [FK_mem_id_Memoria] FOREIGN KEY([id_Memoria])
REFERENCES [dbo].[memorias]([id_Memoria])
GO
ALTER TABLE [dbo].[torres] CHECK CONSTRAINT [FK_mem_id_Memoria]
GO











/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Distribucion]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Distribucion]
@id_Distribucion int,
@id_Equipo int,
@id_usuario int
as

UPDATE [dbo].[Distribuciond]
   SET [id_Distribucion] = @id_Distribucion,
       [id_Equipo] = @id_Equipo,
       [id_usuario] = @id_usuario
 WHERE [id_Distribucion] = @id_Distribucion
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Disco]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Disco]
@id_Disco int,
@tipo_Disco nvarchar(30)
as
UPDATE [dbo].[discos]
   SET [id_Disco] = @id_Disco,
       [tipo_Disco] = @tipo_Disco
 WHERE [id_Disco] = @id_Disco
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Equipo]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Equipo]
(@id_Equipo int,
@estado_Id int,
@torre_Id int,        
@teclado_Id int,          
@raton_Id int,          
@otro_Id int,         
@disco_Id int,
@memoria_Id int,          
@monitor_Id int)
as
begin
update [dbo].[equipos] set id_Equipo=@id_Equipo,estado_Id=@estado_Id,torre_Id=@torre_Id,teclado_Id=@teclado_Id,
raton_Id=@raton_Id,otro_Id=@otro_Id,disco_Id=@disco_Id,memoria_Id=@memoria_Id,monitor_Id=@monitor_Id
where id_Equipo=@id_Equipo
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Estado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Estado]
@id_Estado int,
@tipo_Estado nvarchar (30),
@id_Equipo int
as
UPDATE [dbo].[estados]
   SET [id_Estado] = @id_Estado
      ,[tipo_Estado] = @tipo_Estado
      ,[id_Equipo] = @id_Equipo
 WHERE [id_Estado] = @id_Estado
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Memoria]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Memoria]
@id_Memoria int,
@tipo_Memoria nvarchar(30)
as
UPDATE [dbo].[memorias]
   SET [id_Memoria] = @id_Memoria
      ,[tipo_Memoria] = @tipo_Memoria
 WHERE [id_Memoria] = @id_Memoria
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Monitor]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Monitor]
(
@id_Monitor int,
@tipo_Monitor nvarchar (30),
@marca_Monitor nvarchar (30),
@modelo_Monitor nvarchar (30)
)
as
UPDATE [dbo].[monitores]
   SET [id_Monitor] = @id_Monitor
      ,[tipo_Monitor] = @tipo_Monitor
      ,[marca_Monitor] = @marca_Monitor
      ,[modelo_Monitor] = @modelo_Monitor
 WHERE [id_Monitor] = @id_Monitor
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Otros]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Otros]
(
@id_Otro int,
@tipo_Otro nvarchar(30),
@marca_Otro nvarchar(30),
@modelo_Otro nvarchar(30)
)
as
UPDATE [dbo].[otros]
   SET [id_Otro] = @id_Otro
      ,[tipo_Otro] = @tipo_Otro
      ,[marca_Otro] = @marca_Otro
      ,[modelo_Otro] = @modelo_Otro
 WHERE [id_Otro] = @id_Otro
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Raton]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Raton]
(@id_Raton int,
@tipo_Raton varchar (30),
@marca_Raton varchar (30),
@modelo_Raton varchar (30)
)
as
UPDATE [dbo].[ratones]
   SET [id_Raton] = @id_Raton
      ,[tipo_Raton] = @tipo_Raton
      ,[marca_Raton] = @marca_Raton
      ,[modelo_Raton] = @modelo_Raton
 WHERE [id_Raton] = @id_Raton
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Rol]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Rol]
@id_Rol int,
@rol varchar (30)
as
UPDATE [dbo].[roles]
   SET [id_Rol] = @id_Rol
      ,[rol] = @rol
 WHERE [id_Rol] = @id_Rol
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Sexo]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Actualizar_Teclado]
@teclado int,
@tipo_Teclado nvarchar (30),
@marca_Teclado nvarchar (30),
@modelo_Teclado nvarchar (30)
as
begin
UPDATE [dbo].[teclados]
   SET [id_Teclado] = @teclado
      ,[tipo_Teclado] = @tipo_Teclado
      ,[marca_Teclado] = @marca_Teclado
      ,[modelo_Teclado] = @modelo_Teclado
 WHERE [id_Teclado] = @teclado
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Torre]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Torre]
@id_Torre int,
@marca nvarchar (30),
@modelo nvarchar (30),
@id_Disco int,
@id_Memoria int
as
UPDATE [dbo].[torres]
   SET [id_Torre] = @id_Torre
      ,[marca] = @marca
      ,[modelo] = @modelo
      ,[id_Disco] = @id_Disco
      ,[id_Memoria] = @id_Memoria 
 WHERE [id_Torre] = @id_Torre
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Usuario]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Actualizar_Usuario]
(@nombre nvarchar (20),
@telefono nvarchar (20),
@rol_id int,
@email nvarchar (50)
)
as
UPDATE [dbo].[usuario]
   SET [nombre] = @nombre
      ,[telefono] = @telefono
      ,[rol_id] = @rol_id
      ,[email] = @email
 WHERE [nombre] = @nombre
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Distribucion]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Distribucion]
@id_Distribucion int
as
begin
DELETE FROM [dbo].[Distribucion]
      WHERE [id_Distribucion] = @id_Distribucion
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Disco]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Disco]
@id_Disco int
as
begin
DELETE FROM [dbo].[discos]
      WHERE [id_Disco] = @id_Disco
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Equipo]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Equipo]
@id_Equipo int
as
begin
delete from [dbo].[equipos] where id_Equipo=@id_Equipo
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Estado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Estado]
@id_Estado int
as
begin
DELETE FROM [dbo].[estados]
      WHERE [id_Estado] = @id_Estado
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Memoria]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Memoria]
@id_Memoria int
as
begin
DELETE FROM [dbo].[memorias]
      WHERE [id_Memoria] = @id_Memoria
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Monitor]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Monitor]
@id_Monitor int
as
begin
DELETE FROM [dbo].[monitores]
      WHERE [id_Monitor] = @id_Monitor
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Otros]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Otros]
@id_Otro int
as
begin
DELETE FROM [dbo].[otros]
      WHERE [id_Otro] = @id_Otro
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Raton]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Raton]
@id_Raton int
as
begin
DELETE FROM [dbo].[ratones]
      WHERE [id_Raton] = @id_Raton
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Rol]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Rol]
@id_Rol int
as
begin
DELETE FROM [dbo].[roles]
      WHERE [id_Rol] = @id_Rol
end
GO

GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Teclado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Teclado]
@teclado int
as
begin
DELETE FROM [dbo].[teclados]
      WHERE [id_Teclado] = @teclado
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Torre]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Torre]
@id_Torre int
as
begin
DELETE FROM [dbo].[torres]
      WHERE [id_Torre] = @id_Torre
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Borrar_Usuario]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Borrar_Usuario]
@nombre nvarchar (20)
as
begin
DELETE FROM [dbo].[usuario]
      WHERE [nombre] = @nombre
	  end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Distribucion]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Filtrar_Distribucion]
(
@filtro int
)
as
begin
SELECT [id_Distribucion] as [Identificacion Distribucion]
      ,[id_Equipo] as [Identificacion Equipo]
      ,[id_usuario] as [Identificacion Usuario]
  FROM [dbo].[Distribucion]
  where ltrim(RTRIM([id_Distribucion])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Disco]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Filtrar_Disco]
(
@filtro int
)
as
begin
SELECT [id_Disco] as [Identificacion Disco]
      ,[tipo_Disco] as [Tipo Disco]
  FROM [dbo].[discos]
where ltrim(RTRIM([tipo_Disco])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Equipos]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Filtrar_Equipos]
(
@filtro int
)
as
begin
SELECT dbo.[equipos].id_Equipo as [Identificacion Equipo]
      ,[tipo_Estado] as [Tipo Estado]
      ,[marca] as [Tipo Torre]
      ,[marca_Teclado] as [Teclado]
      ,[marca_Raton] as [Raton]
      ,[tipo_Disco] as [Tipo Disco]
      ,[tipo_Memoria] as [Tipo Memoria]
      ,[tipo_Monitor] as [Tipo Monitor]
	  ,[Tipo_oTRO] AS [Otro]
  FROM [dbo].[equipos]  
  LEFT JOIN [dbo].[estados] on dbo.equipos.estado_Id = dbo.estados.id_Estado
  LEFT JOIN dbo.torres on dbo.equipos.torre_Id = dbo.torres.id_Torre
  LEFT JOIN dbo.teclados on dbo.equipos.teclado_Id = dbo.teclados.id_Teclado
  LEFT JOIN dbo.ratones on dbo.equipos.raton_Id = dbo.ratones.id_Raton
  LEFT JOIN dbo.discos on dbo.equipos.disco_Id = dbo.discos.id_Disco
  LEFT JOIN dbo.memorias on dbo.equipos.memoria_Id = dbo.memorias.id_Memoria
  LEFT JOIN dbo.monitores on dbo.equipos.monitor_Id = dbo.monitores.id_Monitor
  LEFT JOIN dbo.otros on dbo.equipos.otro_Id = dbo.otros.id_Otro
  where ltrim(RTRIM(dbo.[equipos].id_Equipo)) like '%' + ltrim(RTRIM (@filtro)) + '%'
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Estado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Estado]
@filtro int
as
begin
SELECT [id_Estado] as [Identificacion Estado]
      ,[tipo_Estado] as [Tipo Estado]
      ,[id_Equipo] as [Identificacion Equipo]
  FROM [dbo].[estados]
where ltrim(RTRIM([id_Estado])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Memoria]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Memoria]
@filtro int
as
begin
SELECT [id_Memoria]
      ,[tipo_Memoria]
  FROM [dbo].[memorias]
where ltrim(RTRIM([id_Memoria])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Monitor]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Monitor]
@filtro int
as
begin
SELECT [id_Monitor]
      ,[tipo_Monitor]
      ,[marca_Monitor]
      ,[modelo_Monitor]
  FROM [dbo].[monitores]
where ltrim(RTRIM([id_Monitor])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Otros]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Otros]
@filtro int
as
begin
SELECT [id_Otro] as [Identificacion Otro]
      ,[tipo_Otro] as [Tipo Otro]
      ,[marca_Otro] as [Marca Otro]
      ,[modelo_Otro] as [Modelo Otro]
  FROM [dbo].[otros] 
where ltrim(RTRIM([id_Otro])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Ratones]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Ratones]
(
@filtro int
)
as
begin
SELECT [id_Raton] as [Identificacion Raton]
      ,[tipo_Raton] as [Tipo Raton]
      ,[marca_Raton] as [Marca Raton]
      ,[modelo_Raton] as [Modelo Raton]
  FROM [dbo].[ratones]
  where ltrim(RTRIM([id_Raton])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Rol]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Rol]
(
@filtro int
)
as
begin
SELECT [id_Rol] as [Identificacion Rol]
      ,[rol] [Rol]
  FROM [dbo].[roles]
  where ltrim(RTRIM([id_Rol])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO

/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Teclados]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Teclados]
(
@filtro int
)
as
begin
SELECT [id_Teclado] as [Identificacion Teclado]
      ,[tipo_Teclado] as [Tipo Teclado]
      ,[marca_Teclado] as [Marca Teclado]
      ,[modelo_Teclado] as [Modelo Teclado]
  FROM [dbo].[teclados]
  where ltrim(RTRIM([id_Teclado])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Torres]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Filtrar_Torres]
(
@filtro int
)
as
begin
SELECT dbo.[torres].id_Torre as [Identificacion Torre]
      ,[marca] as [Marca]
      ,[modelo] as [Modelo] 
      ,[tipo_Disco] as [Tipo Disco]
      ,[tipo_Memoria] as [Tipo Memoria]
  FROM [dbo].[torres]
   LEFT JOIN dbo.discos on dbo.torres.id_Disco = dbo.discos.id_Disco
   LEFT JOIN dbo.memorias on dbo.torres.id_Memoria = dbo.memorias.id_Memoria
    where ltrim(RTRIM(dbo.[torres].id_Torre)) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Filtrar_Usuarios]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Filtrar_Usuarios]
(
@filtro int
)
as
begin
SELECT [id_usuario] as [Identificacion Usuario]
      ,[nombre] as [Nombre Usuario]
      ,[telefono] as [Telefono Usuario]
      ,[rol_id] as [Rol Usuario]
      ,[email] as [Email Usuario]
  FROM [dbo].[usuario]
    where ltrim(RTRIM([id_usuario])) like '%' + ltrim(RTRIM(@filtro)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Inserta_Rol]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Inserta_Rol]
@id_Rol int,
@rol varchar (30)
as begin
INSERT INTO [dbo].[roles]
           ([id_Rol]
           ,[rol])
     VALUES
           (@id_Rol,@rol)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Distribucion]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Distribucion]
(
@id_Distribucion int,
@id_Equipo int,
@id_usuario int
)
as
begin
INSERT INTO [dbo].[Distribucion]
           ([id_Distribucion]
           ,[id_Equipo]
           ,[id_usuario])
     VALUES
           (@id_Distribucion,
           @id_Equipo,
           @id_usuario)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Disco]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Disco]
(
@id_Disco int,
@tipo_Disco nvarchar(30)
)
as
begin
INSERT INTO [dbo].[discos]
           ([id_Disco]
           ,[tipo_Disco])
     VALUES
           (@id_Disco, @tipo_Disco)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Equipo]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Equipo]
(@id_Equipo int,
@estado_Id int,
@torre_Id int,        
@teclado_Id int,          
@raton_Id int,          
@otro_Id int,         
@disco_Id int,
@memoria_Id int,          
@monitor_Id int)
as
begin 
INSERT INTO [dbo].[equipos]
           ([id_Equipo]
           ,[estado_Id]
           ,[torre_Id]
           ,[teclado_Id]
           ,[raton_Id]
           ,[otro_Id]
           ,[disco_Id]
           ,[memoria_Id]
           ,[monitor_Id])
     VALUES
           (@id_Equipo,@estado_Id,@torre_Id,@teclado_Id,@raton_Id,@otro_Id,@disco_Id
		   ,@memoria_Id,@monitor_Id)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Estado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Estado]

@id_Estado int,
@tipo_Estado nvarchar (30),
@id_Equipo int
as
begin
INSERT INTO [dbo].[estados]
           ([id_Estado]
           ,[tipo_Estado]
           ,[id_Equipo])
     VALUES (@id_Estado, @tipo_Estado, @id_Equipo)
end
GO

/****** Object:  StoredProcedure [dbo].[SP_Insertar_Memoria]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Memoria]
(
@id_Memoria int,
@tipo_Memoria nvarchar(30)
)
as
begin
INSERT INTO [dbo].[memorias]
           ([id_Memoria]
           ,[tipo_Memoria])
     VALUES
           (@id_Memoria,@tipo_Memoria)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Monitor]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Monitor]
(
@id_Monitor int,
@tipo_Monitor nvarchar (30),
@marca_Monitor nvarchar (30),
@modelo_Monitor nvarchar (30)
)
as
begin
INSERT INTO [dbo].[monitores]
           ([id_Monitor]
           ,[tipo_Monitor]
           ,[marca_Monitor]
           ,[modelo_Monitor])
     VALUES
           (@id_Monitor,@tipo_Monitor,@marca_Monitor,@modelo_Monitor)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Otros]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Otros]
(
@id_Otro int,
@tipo_Otro nvarchar(30),
@marca_Otro nvarchar(30),
@modelo_Otro nvarchar(30)
)
as
begin
INSERT INTO [dbo].[otros]
           ([id_Otro]
           ,[tipo_Otro]
           ,[marca_Otro]
           ,[modelo_Otro])
     VALUES
           (@id_Otro,@tipo_Otro,@marca_Otro,@modelo_Otro)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Raton]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Raton]
(@id_Raton int,
@tipo_Raton varchar (30),
@marca_Raton varchar (30),
@modelo_Raton varchar (30)
)
as
begin
INSERT INTO [dbo].[ratones]
           ([id_Raton]
           ,[tipo_Raton]
           ,[marca_Raton]
           ,[modelo_Raton])
     VALUES (@id_Raton,@tipo_Raton,@marca_Raton,@modelo_Raton)
end
GO

/****** Object:  StoredProcedure [dbo].[SP_Insertar_Teclado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Teclado]
@teclado int,
@tipo_Teclado nvarchar (30),
@marca_Teclado nvarchar (30),
@modelo_Teclado nvarchar (30)
as
begin
INSERT INTO [dbo].[teclados]
           ([id_Teclado]
           ,[tipo_Teclado]
           ,[marca_Teclado]
           ,[modelo_Teclado])
     VALUES
           (@teclado,@tipo_Teclado, @marca_Teclado,@modelo_Teclado)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Torre]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Torre]
@id_Torre int,
@marca nvarchar (30),
@modelo nvarchar (30),
@id_Disco int,
@id_Memoria int

as
begin
INSERT INTO [dbo].[torres]
           ([id_Torre]
           ,[marca]
           ,[modelo]
           ,[id_Disco]
           ,[id_Memoria])
     VALUES
           (@id_Torre,@marca,@modelo,@id_Disco,@id_Memoria)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Usuario]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insertar_Usuario]
(
@nombre nvarchar (20),
@telefono nvarchar (20),
@rol_id int,
@email nvarchar (50)
)
as
begin
INSERT INTO [dbo].[usuario]
           ([nombre]
           ,[telefono]
           ,[rol_id]
           ,[email])
          
     VALUES
           (@nombre,@telefono,@rol_id,@email)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Distribucion]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Distribucion]
as
begin
SELECT [id_Distribucion] as [Identificacion Distribucion]
      ,[id_Equipo] as [Identificacion Equipo]
      ,[id_usuario] as [Identificacion Usuario]
  FROM [dbo].[Distribucion]
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Disco]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Disco]
as
begin
SELECT [id_Disco] as [Identificacion Disco]
      ,[tipo_Disco] as [Tipo Disco]
  FROM [dbo].[discos]
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Equipos]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Equipos]
as
begin
SELECT dbo.[equipos].id_Equipo as [Identificacion Equipo]
      ,[tipo_Estado] as [Tipo Estado]
      ,[marca] as [Tipo Torre]
      ,[marca_Teclado] as [Teclado]
      ,[marca_Raton] as [Raton]
      ,[tipo_Disco] as [Tipo Disco]
      ,[tipo_Memoria] as [Tipo Memoria]
      ,[tipo_Monitor] as [Tipo Monitor]
	  ,[Tipo_oTRO] AS [Otro]
  FROM [dbo].[equipos]  
  LEFT JOIN [dbo].[estados] on dbo.equipos.estado_Id = dbo.estados.id_Estado
  LEFT JOIN dbo.torres on dbo.equipos.torre_Id = dbo.torres.id_Torre
  LEFT JOIN dbo.teclados on dbo.equipos.teclado_Id = dbo.teclados.id_Teclado
  LEFT JOIN dbo.ratones on dbo.equipos.raton_Id = dbo.ratones.id_Raton
  LEFT JOIN dbo.discos on dbo.equipos.disco_Id = dbo.discos.id_Disco
  LEFT JOIN dbo.memorias on dbo.equipos.memoria_Id = dbo.memorias.id_Memoria
  LEFT JOIN dbo.monitores on dbo.equipos.monitor_Id = dbo.monitores.id_Monitor
  LEFT JOIN dbo.otros on dbo.equipos.otro_Id = dbo.otros.id_Otro
end 
/****** Object:  StoredProcedure [dbo].[SP_Listar_Estado]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Estado]
as
begin
SELECT [id_Estado] as [Identificacion Estado]
      ,[tipo_Estado] as [Tipo Estado]
      ,[id_Equipo] as [Identificacion Equipo]
  FROM [dbo].[estados]
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Monitor]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Monitor]
as
begin
SELECT [id_Monitor]
      ,[tipo_Monitor]
      ,[marca_Monitor]
      ,[modelo_Monitor]
  FROM [dbo].[monitores]
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Otros]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Otros]
as
begin
SELECT [id_Otro] as [Identificacion Otro]
      ,[tipo_Otro] as [Tipo Otro]
      ,[marca_Otro] as [Marca Otro]
      ,[modelo_Otro] as [Modelo Otro]
  FROM [dbo].[otros] 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Ratones]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Ratones]
as
begin
SELECT [id_Raton] as [Identificacion Raton]
      ,[tipo_Raton] as [Tipo Raton]
      ,[marca_Raton] as [Marca Raton]
      ,[modelo_Raton] as [Modelo Raton]
  FROM [dbo].[ratones]
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Rol]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Rol]
as
begin
SELECT [id_Rol] as [Identificacion Rol]
      ,[rol] [Rol]
  FROM [dbo].[roles]
end
GO

/****** Object:  StoredProcedure [dbo].[SP_Listar_Teclados]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Teclados]
as
begin
SELECT [id_Teclado] as [Identificacion Teclado]
      ,[tipo_Teclado] as [Tipo Teclado]
      ,[marca_Teclado] as [Marca Teclado]
      ,[modelo_Teclado] as [Modelo Teclado]
  FROM [dbo].[teclados]
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Torres]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Torres]
as
begin
SELECT dbo.[torres].id_Torre as [Identificacion Torre]
      ,[marca] as [Marca]
      ,[modelo] as [Modelo] 
      ,[tipo_Disco] as [Tipo Disco]
      ,[tipo_Memoria] as [Tipo Memoria]
  FROM [dbo].[torres]
   LEFT JOIN dbo.discos on dbo.torres.id_Disco = dbo.discos.id_Disco
   LEFT JOIN dbo.memorias on dbo.torres.id_Memoria = dbo.memorias.id_Memoria
end
/****** Object:  StoredProcedure [dbo].[SP_Listar_Usuarios]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Usuarios]
as
begin
SELECT [id_usuario] as [Identificacion Usuario]
      ,[nombre] as [Nombre Usuario]
      ,[telefono] as [Telefono Usuario]
      ,[rol_id] as [Rol Usuario]
      ,[email] as [Email Usuario]
  FROM [dbo].[usuario]
end
/****** Object:  StoredProcedure [dbo].[SP_Listar_Memorias]    Script Date: 29/04/2023 08:40:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Memorias]
as
begin 
SELECT [id_Memoria] as [Identificacion memoria]
	  ,[tipo_Memoria] as [Tipo de memoria]
	FROM [dbo].memorias

END


/*************************************************************************************INSERT DE LAS TABLAS*************************************************************************************************/
/******  ******/
GO
INSERT INTO roles
	(id_Rol , rol )
 VALUES 
	(1, 'Ingeniera Sistema') , 
	(2, 'Soporte T�cnico') , 
	(3, 'Gerente Administrativo')
GO

INSERT INTO usuario 
	(id_usuario , nombre , telefono , rol_id , email )
 VALUES 
	(116860083 , 'Vanessa Ure�a' , 88736422 , 1 , 'vane@outlook.com') ,
	(117070384 , 'Diana Monge' , 88836423 , 3 , 'di@hotmail.com' ) ,
	(116860084 , 'Valeria Ure�a' , 8978364 , 2 , 'vale@outlook.com') ,
	(117040616 , 'Fabian Vargas' , 86187264 , 1 , 'fa@gmail.com' ) 
GO

INSERT INTO discos
     ([id_Disco] , tipo_Disco )
VALUES
	(1 , 'SSD') ,
	(2, 'HDD'),
	(3 , 'SATA')
GO
INSERT INTO memorias
     (id_Memoria,tipo_Memoria)
VALUES
	(1, 'DDR'),
	(2, 'DDR3') ,
	(3, 'DDR4'),
	(4, 'DDR5')
GO
INSERT INTO monitores
     (id_Monitor , marca_Monitor , tipo_Monitor , modelo_Monitor)
VALUES
	(1 , 'DELL' , 'FULL HD' , ' P24h G5 - 23.8') ,
	(2, 'HP' , 'FULL HD' , 'P2419H - 23.8"' ),
	(3, 'LENOVO' ,'FULL HD' , 'G25-20 - 24.5')
GO
INSERT INTO ratones
	(id_Raton , tipo_Raton , marca_Raton , modelo_Raton)
VALUES 
	( 1 , 'USB' , 'DELL' , 'DL2340') ,
	(2 , 'INALAMBRICO' , 'LOGITEC' , 'RT2780' ) 	
GO

INSERT INTO teclados
	(id_Teclado , tipo_Teclado , marca_Teclado , modelo_Teclado)
VALUES 
	(1 , 'USB' , 'LOGITEC' , 'MK4040') ,
	(2 , 'INALAMBRICO' , 'DELL' , 'DM5670' )
GO

INSERT INTO torres
	(id_Torre , marca , modelo , id_Disco , id_Memoria)
VALUES 
	(1 , 'DELL' , 'Vostro 3710' , 3 , 3) ,
	(2 , 'HP', 'ProDesk 400 G7' , 1 , 2) , 
	(3 , 'LENOVO' , 'ThinkCentre M75s' , 2 , 2)
GO
INSERT INTO otros 
	(id_Otro, tipo_Otro , marca_Otro , modelo_Otro)
VALUES 
	(1, 'ADAPTADOR HDMI' , 'UGREEN' , '40360' ),
	(2,'CAMARA WEB' , 'TechZone TZCAMPC01 ' , 'TZCAMPC01' )
GO
INSERT INTO estados 
	(id_Estado , tipo_Estado )
VALUES 
	(1, 'ACTIVO '),
	(2 ,'INACTIVO')
GO
INSERT INTO equipos 
	(id_Equipo , estado_Id , torre_Id , teclado_Id , raton_Id ,otro_Id , disco_Id ,memoria_Id , monitor_Id)
VALUES 
	(1, 2,3,2,1,2,3,4,2),
	(2 ,1,2,1,1,2,3,1,1),
	(3 ,1,2,2,1,2,1,1,1)
GO

INSERT INTO Distribucion
     ([id_Distribucion] , id_Equipo , id_usuario )
VALUES
	(1, 1, 116860083) ,
	(2, 2, 117070384),
	(3, 3, 116860084)
GO
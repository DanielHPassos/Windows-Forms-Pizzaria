USE [Pizzaria_Management]
GO
/****** Object:  Table [dbo].[Adendo]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adendo](
	[cd_Adendo] [int] IDENTITY(1,1) NOT NULL,
	[nm_Adendo] [nvarchar](50) NULL,
	[ds_Adendo] [nvarchar](50) NULL,
	[qt_Adendo] [int] NULL,
	[vl_Adendo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[cd_Adendo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdendoPedido]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdendoPedido](
	[cd_Adendo] [int] NOT NULL,
	[cd_Pedido] [int] NOT NULL,
	[qtd] [int] NOT NULL,
 CONSTRAINT [PK_AdendoPedido] PRIMARY KEY CLUSTERED 
(
	[cd_Adendo] ASC,
	[cd_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[cd_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[nm_Cliente] [nvarchar](50) NULL,
	[ds_Endereco] [nvarchar](50) NULL,
	[dt_Nascimento] [date] NULL,
	[cd_TelResidencial] [nvarchar](15) NULL,
	[cd_TelCelular] [nvarchar](15) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[cd_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[cd_Funcionario] [int] IDENTITY(1,1) NOT NULL,
	[nm_Funcionario] [nvarchar](50) NULL,
	[ds_Endereco] [nvarchar](50) NULL,
	[dt_Nascimento] [date] NULL,
	[cd_TelResidencial] [nvarchar](15) NULL,
	[cd_TelCelular] [nvarchar](15) NULL,
	[cd_PW] [nvarchar](20) NULL,
	[nm_Login] [nvarchar](50) NULL,
	[dt_Login] [date] NULL,
	[dt_Logout] [date] NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[cd_Funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ingrediente]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingrediente](
	[cd_Ingre] [int] NOT NULL,
	[nm_Ingre] [nvarchar](50) NULL,
	[ds_Ingre] [nvarchar](50) NULL,
	[qt_Ingre] [int] NULL,
	[vl_Ingre] [decimal](18, 2) NULL,
	[cd_Pizza] [nchar](10) NULL,
 CONSTRAINT [PK_Ingrediente] PRIMARY KEY CLUSTERED 
(
	[cd_Ingre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido](
	[cd_Pedido] [int] IDENTITY(1,1) NOT NULL,
	[cd_Cliente] [int] NULL,
	[cd_Funcionario] [int] NULL,
	[cd_Adendo] [int] NULL,
	[dt_Pedido] [date] NULL,
	[vl_Total] [decimal](18, 2) NULL,
	[ic_TipoEntrega] [binary](1) NULL,
	[ds_EnderecoEntrega] [nvarchar](50) NULL,
	[ds_FormaPgto] [nvarchar](10) NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[cd_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pizza]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizza](
	[cd_Pizza] [int] IDENTITY(1,1) NOT NULL,
	[nm_Pizza] [nvarchar](50) NULL,
	[ds_Pizza] [nvarchar](50) NULL,
	[cd_Ingre] [int] NULL,
	[vl_Pizza] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Pizza] PRIMARY KEY CLUSTERED 
(
	[cd_Pizza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PizzaPedida]    Script Date: 24/04/2015 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PizzaPedida](
	[cd_Pedido] [int] NOT NULL,
	[cd_Pizza] [int] NOT NULL,
	[qtd] [int] NOT NULL,
 CONSTRAINT [PK_PizzaPedida] PRIMARY KEY CLUSTERED 
(
	[cd_Pedido] ASC,
	[cd_Pizza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AdendoPedido]  WITH CHECK ADD  CONSTRAINT [FK_AdendoPedido_Adendo] FOREIGN KEY([cd_Adendo])
REFERENCES [dbo].[Adendo] ([cd_Adendo])
GO
ALTER TABLE [dbo].[AdendoPedido] CHECK CONSTRAINT [FK_AdendoPedido_Adendo]
GO
ALTER TABLE [dbo].[AdendoPedido]  WITH CHECK ADD  CONSTRAINT [FK_AdendoPedido_Pedido] FOREIGN KEY([cd_Pedido])
REFERENCES [dbo].[Pedido] ([cd_Pedido])
GO
ALTER TABLE [dbo].[AdendoPedido] CHECK CONSTRAINT [FK_AdendoPedido_Pedido]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([cd_Cliente])
REFERENCES [dbo].[Cliente] ([cd_Cliente])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Funcionario] FOREIGN KEY([cd_Funcionario])
REFERENCES [dbo].[Funcionario] ([cd_Funcionario])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Funcionario]
GO
ALTER TABLE [dbo].[Pizza]  WITH CHECK ADD  CONSTRAINT [FK_Pizza_Ingrediente] FOREIGN KEY([cd_Ingre])
REFERENCES [dbo].[Ingrediente] ([cd_Ingre])
GO
ALTER TABLE [dbo].[Pizza] CHECK CONSTRAINT [FK_Pizza_Ingrediente]
GO
ALTER TABLE [dbo].[PizzaPedida]  WITH CHECK ADD  CONSTRAINT [FK_PizzaPedida_Pedido] FOREIGN KEY([cd_Pedido])
REFERENCES [dbo].[Pedido] ([cd_Pedido])
GO
ALTER TABLE [dbo].[PizzaPedida] CHECK CONSTRAINT [FK_PizzaPedida_Pedido]
GO
ALTER TABLE [dbo].[PizzaPedida]  WITH CHECK ADD  CONSTRAINT [FK_PizzaPedida_Pizza] FOREIGN KEY([cd_Pizza])
REFERENCES [dbo].[Pizza] ([cd_Pizza])
GO
ALTER TABLE [dbo].[PizzaPedida] CHECK CONSTRAINT [FK_PizzaPedida_Pizza]
GO

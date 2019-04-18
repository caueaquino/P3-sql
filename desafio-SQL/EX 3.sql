



INSERT INTO [dbo].[plans]
           ([id], [name], [id_type], [id_user], [id_status], [start_date], [end_date], [description], [cost])
     VALUES
           (1, 'Plano do Cauê', 3, 1, 4, '2019-05-04 00:00:00.000', '2019-05-05 00:00:00.000', 'Descrição do plano do Cauê', 10.25),
           (2, 'Plano do Lucas', 1, 2, 2, '2019-04-07 00:00:00.000', '2019-04-08 00:00:00.000', 'Descrição do plano do Lucas', 8.75),
           (3, 'Plano da Camila', 2, 3, 2, '2019-08-09 00:00:00.000', '2019-08-10 00:00:00.000', 'Descrição do plano da Camila', 2.25),
           (4, 'Plano da Tamyres', 1, 4, 1, '2019-07-05 00:00:00.000', '2019-07-06 00:00:00.000', 'Descrição do plano da Tamyres', 78.50),
           (5, 'Plano do Raniel', 3, 5, 1, '2019-06-06 00:00:00.000', '2019-06-07 00:00:00.000', 'Descrição do plano do Raniel', 12.16),
           (6, 'Plano do Vanderley', 3, 6, 2, '2019-09-01 00:00:00.000', '2019-09-01 00:00:00.000', 'Descrição do plano do Vanderley', 1.15),
           (7, 'Plano da Carol', 2, 7, 2, '2019-08-08 00:00:00.000', '2019-08-09 00:00:00.000', 'Descrição do plano da Carol', 99.99),
           (8, 'Plano Avançado do Cauê', 1, 1, 3, '2019-03-02 00:00:00.000', '2019-03-03 00:00:00.000', 'Descrição do plano avançado do Cauê', 6.66)




INSERT INTO [dbo].[plan_interested_users]
           ([id], [id_plan], [id_user])
     VALUES
           (1, 1, 1),
           (2, 1, 3),
           (3, 1, 5),
           (4, 2, 2),
           (5, 2, 4),
           (6, 2, 7),
           (7, 3, 3),
           (8, 3, 5),
           (9, 3, 1),
           (10, 4, 4),
           (11, 4, 6),
           (12, 4, 2),
           (13, 5, 5),
           (14, 5, 7),
           (15, 5, 3),
           (16, 6, 6),
           (17, 6, 1),
           (18, 6, 3),
           (19, 7, 7),
           (20, 7, 2),
           (21, 7, 4),
           (22, 8, 1),
           (23, 8, 5),
           (24, 8, 4)






INSERT INTO [dbo].[plans]
           ([name], [id_type], [id_user], [id_status], [start_date], [end_date], [description], [cost])
     VALUES
           ('Plano do Cauê', 3, 2, 4, '2019-05-04 00:00:00.000', '2019-05-05 00:00:00.000', 'Descrição do plano do Cauê', 10.25),
           ('Plano do Lucas', 1, 3, 2, '2019-04-07 00:00:00.000', '2019-04-08 00:00:00.000', 'Descrição do plano do Lucas', 8.75),
           ('Plano da Camila', 2, 4, 2, '2019-08-09 00:00:00.000', '2019-08-10 00:00:00.000', 'Descrição do plano da Camila', 2.25),
           ('Plano da Tamyres', 1, 5, 1, '2019-07-05 00:00:00.000', '2019-07-06 00:00:00.000', 'Descrição do plano da Tamyres', 78.50),
           ('Plano do Raniel', 3, 6, 1, '2019-06-06 00:00:00.000', '2019-06-07 00:00:00.000', 'Descrição do plano do Raniel', 12.16),
           ('Plano do Vanderley', 3, 7, 2, '2019-09-01 00:00:00.000', '2019-09-01 00:00:00.000', 'Descrição do plano do Vanderley', 1.15),
           ('Plano da Carol', 2, 8, 2, '2019-08-08 00:00:00.000', '2019-08-09 00:00:00.000', 'Descrição do plano da Carol', 99.99),
           ('Plano Avançado do Cauê', 1, 2, 3, '2019-03-02 00:00:00.000', '2019-03-03 00:00:00.000', 'Descrição do plano avançado do Cauê', 6.66)




INSERT INTO [dbo].[plan_interested_users]
           ([id_plan], [id_user])
     VALUES
           (2, 2),
           (2, 4),
           (2, 6),
           (3, 3),
           (3, 5),
           (3, 8),
           (4, 4),
           (4, 6),
           (4, 2),
           (5, 5),
           (5, 7),
           (5, 3),
           (6, 6),
           (6, 8),
           (6, 4),
           (7, 7),
           (7, 2),
           (7, 4),
           (8, 8),
           (8, 3),
           (8, 5),
           (9, 2),
           (9, 6),
           (9, 4)


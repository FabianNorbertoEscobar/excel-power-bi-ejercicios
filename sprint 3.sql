select count(*) from operaciones where Ticket_total > 50000;
select count(*) from operaciones where Ticket_total > 15000 and Cantidad_items <= 2;
select count(*) from operaciones where Nombre_Vendedor = 'RominaSevilla' and Satisfacción_puntaje >= 7;

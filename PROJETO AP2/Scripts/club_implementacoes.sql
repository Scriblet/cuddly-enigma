CREATE DEFINER = CURRENT_USER TRIGGER `club_esportivo`.`associados_part_camp_BEFORE_UPDATE` BEFORE UPDATE ON `associados_part_camp` FOR EACH ROW -- trigger

BEGIN

	   
    IF NEW.sobrenome <> OLD.sobrenome OR NEW.nome <> OLD.nome
    
    THEN
        
	
	INSERT INTO atualizacao_de_associados_camp VALUES (NULL, NULL, NEW.name, NEW.sobrenome, NOW())
    
    END

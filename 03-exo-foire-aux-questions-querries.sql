/*1. Sélectionner tous les utilisateurs (identifiant, nom, prénom, email).*/

SELECT 
user_id,
user_lastname,
user_firstname, 
user_email
FROM t_user
; 

/*2. Sélectionner toutes les questions (date, intitulé, réponse, identifiant utilisateur) triées par date de la plus ancienne à la plus récente*/

SELECT 
question_id,
question_date,
question_label,
question_response
FROM question
ORDER BY question_date ASC
;

/*3. Sélectionner les questions (identifiant, date, intitulé, réponse) de l’utilisateur n°2.*/ 

SELECT 
question_id,
question_date,
question_label,
question_response
FROM question
WHERE user_id = '2'
;


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

/*4. Sélectionner les questions (date, intitulé, réponse, identifiant utilisateur) de l’utilisateur Eva Satiti.*/

SELECT 
	question_date, 
	question_label, 
	question_response, 
	question.user_id 
FROM question 
JOIN t_user ON question.user_id = t_user.user_id
WHERE user_lastname = 'Satiti' AND user_firstname = 'Eva'
;


/*5. Sélectionner les questions (identifiant, date, intitulé, réponse, identifiant utilisateur), dont l’intitulé contient “SQL”. Le résultat est trié par le titre et par ordre décroissant.*/

SELECT 
	question_id, 
	question_date, 
	question_label, 
	question_response, 
	user_id
FROM question
WHERE question_label LIKE '%SQL%'
ORDER BY question_label DESC;


/*6. Sélectionner les catégories (nom, description) sans question associée.*/

SELECT 
	category_name, 
	category_description
FROM category
;


/*7. Sélectionner les questions triées par titre (ordre alphabétique) avec le nom et prénom de l’auteur (nécessite une jointure).*/

SELECT 
	question_id, 
	question_date, 
	question_label, 
	question_response, 
	user_lastname, 
	user_firstname
FROM question
INNER JOIN t_user ON question.user_id = t_user.user_id
ORDER BY question_label ASC
;


/*8. Sélectionner les catégories (nom) avec, pour chaque catégorie le nombre de questions associées (nécessite une jointure).*/

SELECT 
	category_name, 
	COUNT(question_id)
FROM contenir
GROUP BY category_name
;


 

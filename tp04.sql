-- a

select *
from article
order by designation;

-- b

select *
from article
order by article.prix desc;

-- c

select *
from article
where designation like '%boulon%'
order by prix;

-- d

select *
from article
where designation like '%sachet%';

-- e

select *
from article
where lower(designation) like '%sachet%';

-- f

select article.*, fournisseur.nom
from article
left join fournisseur on article.id_fou = fournisseur.id
order by fournisseur.nom, prix desc;
-- g

select article.*, fournisseur.nom
from article
join fournisseur on article.id_fou = fournisseur.id
where fournisseur.nom = 'Dubois & Fils';

-- h

select fournisseur.nom, avg(article.prix) as moyenne
from fournisseur
join article on article.id_fou = fournisseur.id
where fournisseur.nom = 'Dubois & Fils';

-- i

select fournisseur.nom, avg(article.prix) as moyenne
from fournisseur
join article on article.id_fou = fournisseur.id
group by fournisseur.nom
order by moyenne desc;

-- j

select *
from bon
where DATE_CMDE between '2019-03-01' and '2019-04-05 12:00';

-- k

select distinct bon.id
from bon
join compo on bon.id = compo.id_bon
join article on compo.id_art = article.id
where designation like '%boulon%';

-- l

select bon.id, article.designation, fournisseur.nom
from bon
join compo on bon.id = compo.id_bon
join article on compo.id_art = article.id
join fournisseur on fournisseur.id = bon.id_fou
where designation like '%boulon%';

-- m

select bon.id, sum(article.prix*compo.qte) as Total
from bon
join compo on compo.id_bon = bon.id
join article on article.id = compo.id_art
group by bon.id;

-- n

select bon.id,  sum(compo.qte)
    from bon
    join compo on compo.id_bon = bon.id
    group by bon.id
    order by bon.id;

-- o

select bon.id,  sum(compo.qte) as Nombre
    from bon
    join compo on compo.id_bon = bon.id
    join article on article.id = compo.id_art
    group by bon.id
    having Nombre > 25
    order by bon.id;

-- p

select sum(article.prix*compo.qte) as Total
from bon
join compo on compo.id_bon = bon.id
join article on article.id = compo.id_art
where month(DATE_CMDE)=4;
    
-- a facultatif

select a1.designation, a1.id_fou as Fournisseur
from article a1
join article a2 on a1.designation = a2.designation
join fournisseur1 on fournisseur.id = article.id
join fournisseur2 on fournisseur id = 
where a1.id_fou != a2.id_fou;






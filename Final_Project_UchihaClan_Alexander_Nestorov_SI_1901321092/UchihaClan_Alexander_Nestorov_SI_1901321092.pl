man('Indra Otsutski').
man('Setsuna Uchiha').
man('Hikaku Uchiha').
man('Tajima Uchiha').
man('Teyaki Uchiha').
man('Naka Uchiha').
man('Baru Uchiha').
man('Rai Uchiha').
man('Fugaku Uchiha').
man('Kagami Uchiha').
man('Madara Uchiha').
man('Izuna Uchiha').
man('Yashiro Uchiha').
man('Inabi Uchiha').
man('Tekka Uchiha').
man('Yakumi Uchiha').
man('Taiko Uchiha').
man('Shisui Uchiha').
man('Obito Uchiha').
man('Itachi Uchiha').
man('Sasuke Uchiha').
woman('Uruchi Uchiha').
woman('Naori Uchiha').
woman('Mikoto Uchiha').
woman('Izumi Uchiha').
woman('Sakura Haruno').
woman('Sarada Uchiha').

clan_founder('Indra Otsutski').
family('Teyaki Uchiha','Uruchi Uchiha').
family('Uruchi Uchiha','Teyaki Uchiha').
family('Sasuke Uchiha','Sakura Haruno').
family('Sakura Haruno','Sasuke Uchiha').
family('Fugaku Uchiha','Mikoto Uchiha').
family('Mikoto Uchiha','Fugaku Uchiha').
son('Madara Uchiha','Tajima Uchiha').
son('Izuna Uchiha','Tajima Uchiha').
son('Sasuke Uchiha','Fugaku Uchiha').
son('Itachi Uchiha','Fugaku Uchiha').
son('Sasuke Uchiha','Mikoto Uchiha').
son('Itachi Uchiha','Mikoto Uchiha').
dauther('Sarada Uchiha','Sasuke Uchiha').
dauther('Sarada Uchiha','Sakura Haruno').
clan_leader('Indra Otsutski').
clan_leader('Tajima Uchiha').
clan_leader('Madara Uchiha').
clan_leader('Fugaku Uchiha').
clan_leader('Sasuke Uchiha').
military_police_force_leader('Setsuna Uchiha').
military_police_force_leader('Fugaku Uchiha').

military_police_force_officer('Yashiro Uchiha').
military_police_force_officer('Inabi Uchiha').
military_police_force_officer('Tekka Uchiha').
military_police_force_officer('Yakumi Uchiha').
military_police_force_officer('Taiko Uchiha').
military_police_force_officer('Izumi Uchiha').

police_force_descendant('Yashiro Uchiha','Setsuna Uchiha').
police_force_descendant('Inabi Uchiha','Setsuna Uchiha').
police_force_descendant('Tekka Uchiha','Setsuna Uchiha').
police_force_descendant('Yakumi Uchiha','Setsuna Uchiha').
police_force_descendant('Taiko Uchiha','Setsuna Uchiha').
police_force_descendant('Izumi Uchiha','Setsuna Uchiha').

parent(A,B):-son(B,A);dauther(B,A).
father(A,B):-parent(A,B),man(A).
mother(A,B):-parent(A,B),woman(A).
grandfather(A,B):-parent(A,C),parent(C,B),man(A).
grandmother(A,B):-parent(A,C),parent(C,B),woman(A).
brother(A,B):-parent(C,A),parent(C,B),man(A).
double_leaders(A):-(clan_leader(A),military_police_force_leader(A));
    (clan_founder(A),clan_leader(A)).
military_police_male_officers(A):-military_police_force_officer(A),man(A).
military_police_female_officers(A):-military_police_force_officer(A),woman(A).
founder_of_police_force(B):-police_force_descendant(_,B).
high_rank_clan_members(A):-clan_founder(A);clan_leader(A);military_police_force_leader(A).
high_rank_clan_members_families(A,B,C):-(clan_founder(A);
    clan_leader(A);military_police_force_leader(A)),
    family(A,B),son(C,A),son(C,B);dauther(C,A),dauther(C,B).




# Facts.

# Availbale Male List.
# attributes(name, age, location, color, profession, drinks, music, salary).

male(sakib, 21, dhaka, black, musician, coffee, classical, 10000).
male(imran, 23, chattogram, white, programmer, coffee, kpop, 50000).
male(ratul, 21, dhaka, black, student, tea, rock, 15000).
male(samiul, 25, chattogram, black, engineer, coffee, heavymetal, 500000).
male(aminul, 23, mymensingh, black, doctor, coffee, classical, 60000).
male(labib, 25, jessore, pink, engineer, coffee, rock, 100000).
male(tarango, 25, jessore, white, doctor, coffee, classical, 100000).
male(hasib, 24, dhaka, blue, bcs, coffee, hiphop, 100000).
male(osman, 25, dhaka, red, army, coffee, rock, 40000).
male(koushik, 24, barisal, orange, gamer, coffee, jazz, 50000).


#Availbale Female List.
# attributes(name, age, location, color, profession, drinks, music, salary).

female(megan, 22, dhaka, black, musician, coffee, kpop, 10000).
female(kate, 20, chattogram, white, programmer, coffee, classical, 60000).
female(marilyn, 22, barisal, orange, swe, coffee, rock, 50000).
female(sandra, 20, chattogram, grey, swe, coffee, jazz, 10000).
female(scarlett, 20, mymensingh, black, programmer, coffee, hiphop, 10000).
female(jessica, 19, dhaka, blue, swe, coffee, classical, 40000).
female(amy, 20, dhaka, red, swe, coffee, classical, 10000).
female(margot, 17, jessore, pink, swe, coffee, jazz, 50000).
female(nicole, 18, jessore, white, swe, coffee, classical, 10000).
female(julia, 19, dhaka, black, student, tea, heavymetal, 80000).


# Format Output.
format_info(A, B, C, D, E, F, G, H):-
	write("Name " : A), 
	write(", Age " : B),
	write(", Location " : C),
	write(", Color " : D),
	write(", Profession " : E), 
	write(", Drink " : F), 
	write(", Music " : G), 
	write(", Salary " : H), nl.
	
	
	
# Some Female is looking for Male.
male:-
	write("Enter your Name: "), nl,
	read(Name), nl,
	
	write("How old are you? eg. You must be 18+ "), nl,
	read(Age), nl,
	
	write("Where do you live? dhaka/chattogram/jessore/mymensingh/barisal etc."), nl,
	read(Loc), nl,
	
	write("What's your favourite Color? black/white/red/blue etc. "), nl,
	read(Col), nl,
	
	write("What do you do for living? engineer/doctor/swe/student/bcs/army etc"), nl,
	read(Prof), nl,
	
	write("What's your prefered drink? coffee/tea etc"), nl,
	read(Dri), nl,
	
	write("Favorite Musical Genre? rock/classial/rock/jazz/kpop etc"), nl,
	read(Mus), nl,
	
	write("How much do you earn in a month? eg. you can bluff.. "), nl,
	read(Sal), nl,
	
	write("Your compatibility results: "), nl,
	male(A, B, C, D, E, F, G, H), nl,
	calculate_male_compatibility(A, B, C, D, E, F, G, H, Name, Age, Loc, Col, Prof, Dri, Mus, Sal), nl, 
	format_info(A, B, C, D, E, F, G, H), nl, fail.
	
	# write(X), write(Y), write(Z), nl, fail.
	# fail - recur agian.
	# true - recur stops.
	
	
	
# Some Male is looking for Female.
female:-
	write("Enter your Name: "), nl,
	read(Name), nl,
	
	write("How old are you? eg. You must be 18+ "), nl,
	read(Age), nl,
	
	write("Where do you live? dhaka/chattogram/jessore/mymensingh/barisal etc."), nl,
	read(Loc), nl,
	
	write("What's your favourite Color? black/white/red/blue etc. "), nl,
	read(Col), nl,
	
	write("What do you do for living? engineer/doctor/swe/student/bcs/army etc"), nl,
	read(Prof), nl,
	
	write("What's your prefered drink? coffee/tea etc"), nl,
	read(Dri), nl,
	
	write("Favorite Musical Genre? rock/classial/rock/jazz/kpop etc"), nl,
	read(Mus), nl,
	
	write("How much do you earn in a month? eg. you can bluff.. "), nl,
	read(Sal), nl,
	
	write("Your compatibility results: "), nl,
	female(A, B, C, D, E, F, G, H), nl,
	calculate_female_compatibility(A, B, C, D, E, F, G, H, Name, Age, Loc, Col, Prof, Dri, Mus, Sal), nl,
	format_info(A, B, C, D, E, F, G, H), nl, fail.
	
	# write(X), write(Y), write(Z), nl, fail.
	# fail - recur agian.
	# true - recur stops.


	
# Enter into the dating site.
getin:-
	write("Welcome to Online Dating Agency We-Harmony"),nl,
	write("You are looking for: male/female ?"), nl,
	read(X), nl,
	X, nl.


	
add(A, B):-
	Sum is A + B,
	write(Sum),nl.

	
	
goAge(B, Age):-
	write( "Match Score: "),
	B < Age ->
		write("0");   
	B > Age ->
		write("50");   
	write("100").
	
	
	
goLoc(C, Loc):-
	B == Age ->
		write(" + 100");     
	write(" + 50").
	
	
	
goCol(D, Col):-
	D == Col ->
		write(" + 100");     
	write(" + 50").
	
	
	
goProf(E, Prof):-
	E == Prof ->
		write(" + 100");     
	write(" + 80").
	
	
	
goDri(F, Dri):-
	F == Dri ->
		write(" + 100");     
	write(" + 50").
	
	
	
goMus(G, Mus):-
	G == Mus ->
		write(" + 100");     
	write(" + 50").
	
	
	
goSal(H, Sal):-
	H == Sal ->
		write(" + 100"), nl;     
	write(" + 50"), nl.
	
	
# Shows male who is older than the female and earns more than she does.
calculate_male_compatibility(A, B, C, D, E, F, G, H, Name, Age, Loc, Col, Prof, Dri, Mus, Sal):-
	Age < B ->
	H > Sal ->
	write( "okay " ), nl,
	goAge(B, Age),
	goLoc(C, Loc),
	goCol(D, Col),
	goProf(E, Prof),
	goDri(F, Dri),
	goMus(G, Mus),
	goSal(H, Sal).
	
	# write("In male compatibility calc:"), nl, nl,
	# write(" Name " : A), 
	# write(" , Age " : B),
	# write(" , Location ": C), nl,
	# write("Name " : Name),
	# write(" , Age " : Age),
	# write(" , Loc" : Loc), nl.
	
	
# shows female only who is younger than him.
calculate_female_compatibility(A, B, C, D, E, F, G, H, Name, Age, Loc, Col, Prof, Dri, Mus, Sal):-
	Age > B ->
	goAge(B, Age),
	goLoc(C, Loc),
	goCol(D, Col),
	goProf(E, Prof),
	goDri(F, Dri),
	goMus(G, Mus),
	goSal(H, Sal).
	
	# write("In female compatibility calc:"), nl, nl,
	# write(" Name " : A), 
	# write(" , Age " : B),
	# write(" , Location ": C), nl,
	# write("Name " : Name),
	# write(" , Age " : Age),
	# write(" , Loc" : Loc), nl.
	
	
	
	
	
	
	
	
	
	

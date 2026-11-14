user(ahmed, 1234).
user(ali, 5678).
user(sara, 9012).

login :-
    try_login(3).

try_login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.').

try_login(N) :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (user(Username, Password) ->
        write('Login Successful')
    ;
        write('Login Unsuccessful'), nl,
        Next is N - 1,
        try_login(Next)
    ).

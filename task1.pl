square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Length, Width, Area, Perimeter) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

triangle(A, B, C, Area, Perimeter) :-
    Perimeter is A + B + C,
    S is Perimeter / 2,
    Area is sqrt(S * (S-A) * (S-B) * (S-C)).

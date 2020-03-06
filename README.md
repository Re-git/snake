# Snake
The most amazing Snake game ever

## Tutoriale i dokumentacja

1. [Coding Train](https://www.youtube.com/watch?v=-f0WEitGmiw&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=1) ma sporo sporą bibliotekę filmów tłumaczących w bardzo przystępny sposób jak zrobić przeróżne efekty przy pomocy processing (animacje, dzwieki, fizyka, sztuczna inteligencja, multiplayer itd)
2. https://processing.org/tutorials/
3. [Referencja](https://processing.org/reference/) spis wszystkich dostepnych funkcji w bibliotece Processing wraz z przykładami użycia

## Wymagania do pracy nad projektem:

1. Zainstaluj Processing: https://processing.org/download/
2. Zaloguj się na swój github.
3. Wyślij mi wiadomość ze swoją nazwą konta na github to dodam cię jako "collaborator".
4. Jeśli masz fajny pomysł co dodać do naszej gry napisz o tym w Issues.
5. Jeśli nie masz pojęcia jak używać Git zobacz jakiś tutorial. np: https://youtu.be/BCQHnlnPusY?t=282
6. zrób gałąź, dodaj nową funkcjonalność i poproś o pull request.

## Przykład jak to robić z konsoli(linia poleceń):
Żeby pobrać projekt na swój komputer, robimy sobie folder na kompie, następnie odpalamy konsole gita w tym katalogu (klikamy prawym w tym katalogu i wybieramy "Open git bash here"
Następnie wpisujemy 

`git clone https://github.com/Re-git/snakegame.git`
Ta komenda pobrała całe repozytorium na twoj komputer.

Jeśli chcesz rozpocząć pracę nad nową funkcjonalnością (dopisać trochę kodu)
Najpierw zrób nową gałąź, nazwij ją np. super-eksplozje
1. `git checkout -b super-eksplozje`

następnie zakoduj super eksplozje. Jeśli wszystko działa to zatwierdź zmiany w repozytorium lokalnym na twoim kompie przez wpisanie

**Opcjonalnie - jeśli dodałeś nowe pliki do repo to** `git add *` 

2. `git commit -m "dodałem super mega explozje jak snek uderzy w granice mapy. Kabooom!"`

Teraz wyślemy nasze zmiany na serwer GitHub gdzie inni będą mogli je zobaczyć

3. `git push -u origin super-eksplozje`

Ostatnim krokiem jest poproszenie o tzw. pull request czyli dodanie zmian do gałęzi Master naszego projektu

4. Na stronie git kliknij add pull request

Twoja prośba pojawi się w zakładce pull requests i będzie czekała na akceptację przez innych członków zespołu.

5. Jeśli chesz powrócić do gałęzi Master `git checkout master`

Teraz możesz utworzyć kolejną gałąź wracając do punktu 1 i dodać nową funkcjonalność, nowy level lub jeszcze więcej eksplozji.

import java.util.Scanner;

/**
 * nazwa funkcji: sprawdzPlec
 * opis funkcji: Sprawdza płeć na podstawie 10. cyfry numeru PESEL
 * parametry: - pesel - numer PESEL jako ciąg znaków (String)
 * zwracany typ i opis: - char - Zwraca 'K' dla kobiety lub 'M' dla mężczyzny
 * autor: 000000000000
 * **/
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Podaj numer Pesel: ");
        String pesel = scanner.nextLine();

        char plec = sprawdzPlec(pesel);
        String plecStr = (plec == 'K') ? "Kobieta" : "Mężczyzna";
        System.out.println("Płeć: " + plecStr);

        boolean poprawny = sprawdzSumeKontrolna(pesel);
        if(poprawny) {
            System.out.println("Numer Pesel jest poprawny");
        }
        else {
            System.out.println("Numer Pesel jest niepoprawny");
        }

    }

    public static char sprawdzPlec(String pesel){
        int cyfraPlec = Character.getNumericValue(pesel.charAt(9));
        if (cyfraPlec % 2 == 0){
            return 'K';
        }
        else {
            return 'M';
        }
    }

    public static boolean sprawdzSumeKontrolna(String pesel){
        int[] wagi = {1,3,7,9,1,3,7,9,1,3};
        int suma = 0;

        for (int i=0; i < 10; i++){
            suma += Character.getNumericValue(pesel.charAt(i)) * wagi[i];
        }

        int cyfraKontrolna = Character.getNumericValue(pesel.charAt(10));
        int modulo = suma % 10;
        int sumaKontrolna = (modulo == 0) ? 0 : 10 - modulo;

        return sumaKontrolna == cyfraKontrolna;
    }
}
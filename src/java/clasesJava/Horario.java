package clasesJava;

/**
 * @author Matias
 */
public class Horario {

    private int horas, minutos;

    public String horaSalida() {
        horas = (int) Math.round(Math.random() * 24);

        if (horas < 10) {
            return "0" + horas;
        } else if (horas == 24) {
            return "00";
        } else {
            return String.valueOf(horas);
        }
    }

    public String minutoSalida() {
        minutos = (int) Math.round(Math.random() * 60);

        if (minutos < 10) {
            return "0" + minutos;
        } else if (minutos == 60) {
            return "00";
        } else {
            return String.valueOf(minutos);
        }
    }

    public String horaLlegada(int horasVuelo) {
        for (int i = 0; i < horasVuelo; i++) {
            horas++;
            if (horas >= 24) {
                horas = 0;
            }
        }

        if (horas < 10) {
            return "0" + horas;
        } else {
            return String.valueOf(horas);
        }
    }
}

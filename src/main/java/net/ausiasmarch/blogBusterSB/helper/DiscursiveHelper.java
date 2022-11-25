package net.ausiasmarch.blogBusterSB.helper;

public class DiscursiveHelper {

    public String getDiscursive(int length) {
        String Discurso = null, SacaPedazo1 = null, SacaPedazo2 = null, SacaPedazo3 = null, SacaPedazo4 = null;
        switch (RandomHelper.getRandomInt(1, 8)) {
            case 1:
                Discurso = "Es verdad que ";
                break;
            case 2:
                Discurso = "Podemos considerar que ";
                break;
            case 3:
                Discurso = "No cabe duda que ";
                break;
            case 4:
                Discurso = "Vamos a poner en claro que ";
                break;
            case 5:
                Discurso = "Déjame que te cuente que ";
                break;
            case 6:
                Discurso = "Se sabe que ";
                break;
            case 7:
                Discurso = "Se conoce que ";
                break;
            case 8:
                Discurso = "Consideremos que ";
                break;
            case 9:
                Discurso = "Todo el mundo debería saber que ";
                break;
        }
        for (var i = 1; i <= length; i++) {
            switch (RandomHelper.getRandomInt(1, 14)) {
                case 1:
                    SacaPedazo1 = "No obstante ";
                    break;
                case 2:
                    SacaPedazo1 = "Por otra parte, ";
                    break;
                case 3:
                    SacaPedazo1 = "Asimismo, ";
                    break;
                case 4:
                    SacaPedazo1 = "Sin embargo no hemos de olvidar que ";
                    break;
                case 5:
                    SacaPedazo1 = "De igual manera, ";
                    break;
                case 6:
                    SacaPedazo1 = "La práctica prueba que ";
                    break;
                case 7:
                    SacaPedazo1 = "Y no es menos cierto que ";
                    break;
                case 8:
                    SacaPedazo1 = "Las experiencias, ricas y diversas, muestran que, ";
                    break;
                case 9:
                    SacaPedazo1 = "Y aún así ";
                    break;
                case 10:
                    SacaPedazo1 = "No obstante ";
                    break;
                case 11:
                    SacaPedazo1 = "Incluso, bien pudiéramos atrevernos a sugerir que ";
                    break;
                case 12:
                    SacaPedazo1 = "Es obvio señalar que, ";
                    break;
                case 13:
                    SacaPedazo1 = "De hecho, ";
                    break;
                case 14:
                    SacaPedazo1 = "También cabe añadir en este punto que ";
                    break;
            }
            switch (RandomHelper.getRandomInt(1, 14)) {
                case 1:
                    SacaPedazo2 = "la realización de las premisas del programa común ";
                    break;
                case 2:
                    SacaPedazo2 = "la complejidad de los estudios de los dirigentes ";
                    break;
                case 3:
                    SacaPedazo2 = "el aumento constante, en cantidad y en extensión, de nuestra actividad ";
                    break;
                case 4:
                    SacaPedazo2 = "la estructura actual de la organización ";
                    break;
                case 5:
                    SacaPedazo2 = "el nuevo modelo de actividad de la organización, ";
                    break;
                case 6:
                    SacaPedazo2 = "el desarrollo continuo de distintas formas de actividad ";
                    break;
                case 7:
                    SacaPedazo2 = "nuestra actividad de información y propaganda ";
                    break;
                case 8:
                    SacaPedazo2 = "el reforzamiento y desarrollo de las estructuras ";
                    break;
                case 9:
                    SacaPedazo2 = "la consulta con los numerosos militantes ";
                    break;
                case 10:
                    SacaPedazo2 = "el inicio de la acción general de formación de las actitudes ";
                    break;
                case 11:
                    SacaPedazo2 = "un relanzamiento específico de todos los sectores implicados ";
                    break;
                case 12:
                    SacaPedazo2 = "la superación de experiencias periclitadas ";
                    break;
                case 13:
                    SacaPedazo2 = "una aplicación indiscriminada de los factores confluyentes ";
                    break;
                case 14:
                    SacaPedazo2 = "el proceso consensuado de unas y otras aplicaciones concurrentes ";
                    break;
            }
            switch (RandomHelper.getRandomInt(1, 14)) {
                case 1:
                    SacaPedazo3 = "nos obliga a un exhaustivo análisis ";
                    break;
                case 2:
                    SacaPedazo3 = "cumple un rol esencial en la formación ";
                    break;
                case 3:
                    SacaPedazo3 = "exige la precisión y la determinación ";
                    break;
                case 4:
                    SacaPedazo3 = "ayuda a la preparación y a la realización ";
                    break;
                case 5:
                    SacaPedazo3 = "garantiza la participación de un grupo importante en la formación ";
                    break;
                case 6:
                    SacaPedazo3 = "cumple deberes importantes en la determinación ";
                    break;
                case 7:
                    SacaPedazo3 = "facilita la creación ";
                    break;
                case 8:
                    SacaPedazo3 = "obstaculiza la apreciación de la importancia ";
                    break;
                case 9:
                    SacaPedazo3 = "ofrece un ensayo interesante de verificación ";
                    break;
                case 10:
                    SacaPedazo3 = "implica el proceso de reestructuración y modernización ";
                    break;
                case 11:
                    SacaPedazo3 = "habrá de significar un auténtico y eficaz punto de partida ";
                    break;
                case 12:
                    SacaPedazo3 = "permite en todo caso explicitar las razones fundamentales ";
                    break;
                case 13:
                    SacaPedazo3 = "asegura, en todo caso, un proceso muy sensible de inversión ";
                    break;
                case 14:
                    SacaPedazo3 = "deriva de una indirecta incidencia superadora ";
                    break;
            }
            switch (RandomHelper.getRandomInt(1, 14)) {
                case 1:
                    SacaPedazo4 = "de las condiciones financieras y administrativas existentes. ";
                    break;
                case 2:
                    SacaPedazo4 = "de las directivas de desarrollo para el futuro. ";
                    break;
                case 3:
                    SacaPedazo4 = "del sistema de participación general. ";
                    break;
                case 4:
                    SacaPedazo4 = "de las actitudes de los miembros hacia sus deberes ineludibles. ";
                    break;
                case 5:
                    SacaPedazo4 = "de las nuevas proposiciones. ";
                    break;
                case 6:
                    SacaPedazo4 = "de las direcciones educativas en el sentido del progreso. ";
                    break;
                case 7:
                    SacaPedazo4 = "del sistema de formación de cuadros que corresponda a las necesidades. ";
                    break;
                case 8:
                    SacaPedazo4 = "de las condiciones de las actividades apropiadas. ";
                    break;
                case 9:
                    SacaPedazo4 = "del modelo de desarrollo. ";
                    break;
                case 10:
                    SacaPedazo4 = "de las formas de acción. ";
                    break;
                case 11:
                    SacaPedazo4 = "de las básicas premisas adoptadas. ";
                    break;
                case 12:
                    SacaPedazo4 = "de toda una casuística de amplio espectro. ";
                    break;
                case 13:
                    SacaPedazo4 = "de los elementos generadores. ";
                    break;
                case 14:
                    SacaPedazo4 = "de toda una serie de criterios ideológicamente sistematizados en un frente común de actuación regeneradora. ";
                    break;
            }
            if (i == 1) {
                Discurso += SacaPedazo2 + SacaPedazo3 + SacaPedazo4;
            } else {
                Discurso += SacaPedazo1 + SacaPedazo2 + SacaPedazo3 + SacaPedazo4;
            }
        }
        return Discurso;
    }
}

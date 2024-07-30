class Resultat {
  final List<Matiere> liste;
  
  const Resultat(this.liste);

  double calculerMoyenne() {
    if (liste.isEmpty) {
      return 0;
    }

    double totalNotesPonderees = liste.fold(0, (total, matiere) => total + matiere.note * matiere.weigh);
    return totalNotesPonderees / calculerTotalPonderation();
  }

  double calculerTotalPonderation() {
    return liste.fold(0, (total, matiere) => total + matiere.weigh);
  }
}

class Matiere {
  final String name;
  final int note;
  final int weigh;
  
  const Matiere(this.name, this.note, this.weigh);
}

void main() {
  final notes = Resultat([
    Matiere("Maths", 15, 9),
    Matiere("Histoire Géographie", 12, 3),
    Matiere("Français", 9, 4),
    Matiere("Physiques Chimie", 17, 7),
    Matiere("Philosophie", 9, 4)
  ]);

  double moyenne = notes.calculerMoyenne();
  double totalCoefficients = notes.calculerTotalPonderation();

  print('Moyenne générale: ${moyenne.toStringAsFixed(2)}');
  print('Total des coefficients: ${totalCoefficients.toStringAsFixed(2)}');

  print('\nDétail des notes:');
  for (var matiere in notes.liste) {
    print('${matiere.name}: ${matiere.note} (coefficient: ${matiere.weigh})');
  }
}
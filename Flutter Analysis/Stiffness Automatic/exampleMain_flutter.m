global beam_model

filename_sma = 'flutter.dat';


beam_model = load_nastran_model(filename_sma);

solve_linflutt();

global flutter_s;

return

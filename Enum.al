enum 50100 BookRating
{
    Extensible = true;


    value(0; Poor) { Caption = 'Poor'; }
    value(1; Average) { Caption = 'Average'; }
    value(2; Good) { Caption = 'Good'; }
    value(3; VeryGood) { Caption = 'Very Good'; }
    value(4; Best) { Caption = 'Best'; }

}
enumextension 50102 colorExtension extends "BookRating"
{
    value(5; Outstanding)
    {
        Caption = 'Outstanding';
    }
}
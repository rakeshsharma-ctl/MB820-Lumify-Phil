// this enum is used to store the book rating
// Enums vs Options in Business Central:
// 1. Enums are extensible, allowing new values to be added through extensions, while Options are fixed
// 2. Enums can have captions that are different from their identifiers, Options use identifier as caption
// 3. Enums can be shared across tables and referenced globally, Options are local to their table field
// 4. Enums support explicit numbering of values, Options are always zero-based sequential
// 5. Enums provide better type safety and maintainability compared to Options

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
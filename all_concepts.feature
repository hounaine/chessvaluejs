Feature: In order to create a chessboard As an Admin I need  first to design an 8x8 Array

 Scenario: Create a 8 column array
  Given board need 8 columns to be created
  When I create a first column--> record an ID for the first column
  Then I Create the second column that should be adjacent to the first column
  And record it as the second column with an ID
  Then I Create The third column that should be adjacent to the second columnn
  And record it as the third column with an ID
  Then I The fourth column should be adjacent to the third column
  And record it as the fourth column with an ID
  Then I The fifth column should be adjacent to the fourth column
  And record it as the fourth column with an ID
  Then I The sixth column should be adjacent to the fifth column
  And record it as the sixth column with an ID
  Then I  The seventh column should be adjacent to the sixth column
  And record it as the seventh column with an ID
  Then I The eight column should be adjacent to the seventh column
  And record it as the eight column with an ID
  Then an array is created

 Scenario: divide columns to create rows
  Given 8 columns have been created
  When I divide each columns is equal cells
  Then I should get 8 row with eqal cells
  And each Row should have an ID
  And each cell should have an ID

Feature: In order to create a valid chessboard I need to define the relation between the cells

 Scenario: cells types and attributes
  Given cells have attributes
  When I define the relation between cells 
  Then I should define the concept that links the cells between them

 Scenario: <color cells>
  Given a cell is colored
  When cell_A = color1
  Then cell_B = Should be colored
  And number of cell_A = number of cell_B

 Scenario: <colored cells rule>
  Given A first cell is color1
  When jump to next cell remaining in same column or same row
  Then next cell should be color2

 Scenario: <occupation concept>
  Given a cell is empty
  When a piece in on the cell
  Then the cell is declared not empty
  And it is occupied


 Scenario:<adjacent cells>
 Given Cells are be adjacent one to another
 When Next cell on next column or next cell on the same column
 Or next cell on next row or next cell on the same row is incremented to +1
 Then We should declare the adjacency condition is met
 And arithmetic relation is written j(+1,+1) j=jump "or move"

# D3
Deliverable 3 for CS1632, Spring 2019

## Ronen Orland | roo18

Be wary of setting the size to 6+, as reducing the speed of Katalon's test step traversal may be necessary to prevent it from timing out while waiting for things to load. 

## Traceability Matrix
| Requirement | Test Cases |
| :---------: | :--------: |
| 1           | Main page elements |
| 2           | Main page has reload link, Table page has link to main, Invalid input error page has link to main, Invalid page error page has link to main|
| 3           | Bad truth symbol, Bad false symbol, Identical truth and false symbols, Bad size <2, Bad size not an int |
| 4           | Valid inputs A-B-5 |
| 5           | Valid inputs A-B-5 |
| 6           | size 3 AND, size 3 OR, size 3 NAND, size 3 NOR |
| 7           | Default table elements |
| 8           | Bad address |

## Requirements for Web Application
1. Upon accessing the main page ("/", i.e., http://localhost:4567), the system shall display a page with three textboxes and a single submit button, arranged together and each labeled. The first textbox shall be labeled "True symbol:", the second textbox "False symbol:", and the third textbox "Size (2^x):". The button shall be labeled "Show truth table".
2. In addition to data already specified, all pages, including the main page itself, shall include a link back to the main page ("/", i.e., http://localhost:4567); however, the text in the link may differ from page to page.
3. If the "Show truth table" button is pressed and the data is invalid, then an error page containing the text "ERROR" in an H1 tag, and "Invalid parameters." shall be displayed, along with a description explaining the rules for valid data (see below).
4. Data shall be considered valid if both the true and false symbols are single characters and are distinct from each other (i.e., they shall not be the same character), and that the size is an integer with a value of 2 or greater.
5. Upon pressing "Show truth table" with valid parameters, a truth table shall be constructed and displayed using the specified true and false symbols. The top row shall include a descriptor of the value/"bit" (descending, i.e., it should start with the highest number and descend to 0), along with an additional final four column designators labeled "AND", "OR", "NAND", "NOR" in that order.
6. Additionally, each row in the truth table shall include three additional columns, specifying the result of the AND, OR, NAND, and NOR operators. For multi-element truth operations, we shall consider AND(values) to be true if and only if all elements are true (e.g., "111" is true, but "110" is false); we shall consider OR(values) to be true if and only if any element is true (e.g., "010" is true, but "000" is false); we shall consider NAND to be true if and only if NOT(AND(values)) is true; we shall consider NOR to be true if and only if NOT(OR(values)) is true.
7. If no data is entered on the main page in a particular textbox, the default value shall be used. The default value for the true symbol is "T", the default value for the false symbol is "F", and the default value for the size is "3".
8. If a user goes to a URL other than one specified (e.g., "http://localhost:4567/hotdog"), the system shall display a page stating "ERROR" (in an h1 tag),as well as the text, "Invalid address.", along with a 404 error code.

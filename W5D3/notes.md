# CSS

# CSS Reset

Reverts the page to a blank slate. Margins, padding, and borders are back to the default setting.

# Display

- Types of boxes
  - block
    - tries to be as wide as possible
    - content before and after box appears on separate line.
    - can take up the full width of its parent.
  - inline
    - allow other elements to sit to its left and right.
    - does not respect top/bottom marigin/padding.
    - CAN NOT have a width or height set.
  - inline-block
    - allows other elements to sit to its left and right.
    - respects wwidth/height, and margin/padding.

- Flex : boxes controlling boxes.


# Float

Useful for making a print

# Clearfix

If a floating element is "floating" outside of its container, this is a clearfix.

`.clearfix::after {
  content: "";
  clear: both;
  display: table;
  }`

It adds a pseudoelement to a container.

# Flex

Once an element has a `display:flex`, it can manipulate all the boxes inside of it.

- Goes on the container to affect the layout of the children.

- main idea is to give the container the ability to alter its children's placement.

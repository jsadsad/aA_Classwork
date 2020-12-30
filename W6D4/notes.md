# CSS Positioning

# Outline

- Position Property
- Position Demo
- Dropdown Demo

# Position

Properties: Static, Relative, Absolute, Fixed, Sticky.

1. Static
  - default positioning and flow
  - not affected by the top, bottom, left, and right properties.
  - things flow around each other
  - thigns take up space

2. Relative
  - Relative to where it would be.
  - Think of it as visually moving vs the element physically moving on the page.
  - Flow remains the same.
  - Uses top, bottom, left, right properties.
  - When it moves, it leaves a shadow occupying the space.

3. Absolute
  - positioned in relation to nearest non-static ancestor.
  - think of it as both _visually_ moving and _physically_ moving out of the page.
  - no longer takes up space in page.
  - can overlap or be overlapped by.
  - uses the document if everything is static.
  - also users top, bottom, left, right properties.

4. Fixed
  - same as absolute but relative to the viewport.
  - when you scroll, the position folows.
  - useful for navbars

5. Sticky
  - same as fixed but will stay at a certain position.
  - starts at normal spot and STICKS to a point in the page.

# Dropdowns

- Will have a hover effect which displays a 'dropdown' list of elements
- in reality, elements are merely hidden until the hover effect changes `display: none` to `display: block`.
- The list of elements appear on top of the rest of the page due to `position: absolute`

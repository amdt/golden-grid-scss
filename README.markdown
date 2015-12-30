# golden-grid-scss

This is a partial implementation of [Joni Korpi's *Golden Grid System*][1] in
[Sass][2].  Only the typographical grid is implemented.  The zoomable baseline
grid and the grid overlay are not implemented.  This README assumes a
familiarity with both the *Golden Grid System* and Sass.

## Outline

This stylesheet provides a mixin which, given a prefix and a number of columns,
generates placeholder classes for all combinations of column widths and the
margins needed to position those columns.  Sass's, `@extend`, keyword is used
to bind those to all the concrete classes you'll need to position any element
in the grid.

The mixin is used to generate the three grids which make up the *Golden Grid*:

1. **Small**, 4-column grid.
2. **Medium**, 8-column grid at a breakpoint of 45rem (720px at most browsers'
   default 16px).
3. **Large**, 16-column grid at a breakpoint of 117rem (1872px at most
   browsers' default 16px).

## Usage

Somewhat inspired by Monotype's [Gridset][3], the set of provided classes
include the breakpoint size and column span eg., `.g-s-2-4`, spanning columns 2
through 4 in the, 'small', grid.  These are combined to define how an element
is sized and positioned at each breakpoint: `<div class="g-s-2-4 g-m-4-8
g-l-12-16">[…]</div>`.

## Considerations

* As a *typographical* grid, the breakpoints are measured in the corresponding
  typographical *rem* unit.
* The horizontal positioning is achieved with container-relative floats as
  described in
  [John Albin Wilkins's *Responsive Design's Dirty Little Secret*][4].  This
  prevents columns from wrapping due to inconsistencies in sub-pixel rendering
  and compounding rounding errors in percentage-based grids.
* The styles are organised mobile-first.
* Clearing of floats is handled automatically for full-width columns.  A
  `.g-[ breakpoint ]-clear` class is provided for each breakpoint.  If you
  require a, 'row', container using the clearfix hack to contain columns, you
  need to write one.

[1]: http://www.jonikorpi.com/golden-grid-system/
[2]: http://sass-lang.com
[3]: https://gridsetapp.com
[4]: https://www.palantir.net/blog/responsive-design-s-dirty-little-secret

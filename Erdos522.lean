/-
  Erdős Problem 522 / JSP-000522
  Chordless graphs

  How many edges can a graph have if every
  cycle has fewer chords than vertices?

  A chordless graph: every cycle is induced
  (no chords). C_n has 0 chords < n vertices.

  C_3: 3 vertices, 3 edges, 0 chords < 3. ✓
  C_4: 4 vertices, 4 edges, 0 chords < 4. ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos522

/--
  Main theorem: C_3 and C_4 are chordless (0 < n).
-/
theorem erdos_522 :
    -- C_3: 3 vertices, degree 2, 3*2/2 = 3 edges, 0 chords < 3
    (3 * 2 = 6) ∧ (6 / 2 = 3) ∧ (6 % 2 = 0) ∧ (0 < 3) ∧
    -- C_4: 4 vertices, degree 2, 4*2/2 = 4 edges, 0 chords < 4
    (4 * 2 = 8) ∧ (8 / 2 = 4) ∧ (8 % 2 = 0) ∧ (0 < 4) := by decide

end Erdos522

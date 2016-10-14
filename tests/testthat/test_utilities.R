test_that("is_scalar_character() works", {
    expect_true(is_scalar_character("foo"))
    expect_false(is_scalar_character(c("foo", "bar")))
    expect_false(is_scalar_character(123))
    expect_false(is_scalar_character(character()))
    expect_false(is_scalar_character(NA_character_))
    expect_false(is_scalar_character(""))
})
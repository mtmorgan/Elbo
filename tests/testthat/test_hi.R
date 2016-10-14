test_that("hi() starts a conversation", {
    expect_identical(
        hi("world"),
        "hello WORLD you have 5 letters in your name!")
    expect_identical(
        hi("world", "whisper"),
        "hello world you have 5 letters in your name!")
    expect_error(
        hi("world", how="murmur"),
        "'arg' should be one of \"shout\", \"whisper\"")
})
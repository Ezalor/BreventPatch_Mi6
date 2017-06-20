.class Landroid/support/v4/view/u;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi20.java"


# direct methods
.method public static a(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 27
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;IIII)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 56
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 31
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 35
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 39
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

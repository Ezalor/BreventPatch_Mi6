.class Landroid/support/v4/view/v;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi21.java"


# direct methods
.method public static a(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 48
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

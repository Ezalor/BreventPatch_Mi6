.class Landroid/support/v4/view/s;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/s$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 127
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsets;

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 129
    if-eq v1, v0, :cond_e

    .line 130
    new-instance p1, Landroid/view/WindowInsets;

    invoke-direct {p1, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 132
    :cond_e
    return-object p1
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/s$a;)V
    .registers 3

    .prologue
    .line 66
    if-nez p1, :cond_7

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 76
    :goto_6
    return-void

    .line 69
    :cond_7
    new-instance v0, Landroid/support/v4/view/s$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/s$1;-><init>(Landroid/support/v4/view/s$a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_6
.end method

.method public static b(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 136
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsets;

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 138
    if-eq v1, v0, :cond_e

    .line 139
    new-instance p1, Landroid/view/WindowInsets;

    invoke-direct {p1, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 141
    :cond_e
    return-object p1
.end method

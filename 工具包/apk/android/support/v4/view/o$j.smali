.class Landroid/support/v4/view/o$j;
.super Landroid/support/v4/view/o$i;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1617
    invoke-direct {p0}, Landroid/support/v4/view/o$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;
    .registers 4

    .prologue
    .line 1750
    .line 1751
    invoke-static {p2}, Landroid/support/v4/view/t;->a(Landroid/support/v4/view/t;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1750
    invoke-static {v0}, Landroid/support/v4/view/t;->a(Ljava/lang/Object;)Landroid/support/v4/view/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/h;)V
    .registers 4

    .prologue
    .line 1656
    if-nez p2, :cond_7

    .line 1657
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/s$a;)V

    .line 1671
    :goto_6
    return-void

    .line 1661
    :cond_7
    new-instance v0, Landroid/support/v4/view/o$j$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/o$j$1;-><init>(Landroid/support/v4/view/o$j;Landroid/support/v4/view/h;)V

    .line 1670
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/s$a;)V

    goto :goto_6
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;
    .registers 4

    .prologue
    .line 1756
    .line 1758
    invoke-static {p2}, Landroid/support/v4/view/t;->a(Landroid/support/v4/view/t;)Ljava/lang/Object;

    move-result-object v0

    .line 1757
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1756
    invoke-static {v0}, Landroid/support/v4/view/t;->a(Ljava/lang/Object;)Landroid/support/v4/view/t;

    move-result-object v0

    return-object v0
.end method

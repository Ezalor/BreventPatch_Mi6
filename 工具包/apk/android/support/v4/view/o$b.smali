.class Landroid/support/v4/view/o$b;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/o$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/o$b;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/l;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1006
    invoke-interface {p1}, Landroid/support/v4/view/l;->b()I

    move-result v2

    .line 1007
    invoke-interface {p1}, Landroid/support/v4/view/l;->a()I

    move-result v3

    .line 1008
    invoke-interface {p1}, Landroid/support/v4/view/l;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1009
    if-nez v3, :cond_13

    move v0, v1

    .line 1013
    :cond_12
    :goto_12
    return v0

    .line 1010
    :cond_13
    if-gez p2, :cond_19

    .line 1011
    if-gtz v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 1013
    :cond_19
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_12

    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method public a(III)I
    .registers 5

    .prologue
    .line 623
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method a()J
    .registers 3

    .prologue
    .line 559
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;
    .registers 3

    .prologue
    .line 942
    return-object p2
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 545
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 588
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .registers 3

    .prologue
    .line 514
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/h;)V
    .registers 3

    .prologue
    .line 938
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v4/view/o$b;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 502
    instance-of v0, p1, Landroid/support/v4/view/l;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/l;

    .line 503
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/o$b;->a(Landroid/support/v4/view/l;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;
    .registers 3

    .prologue
    .line 947
    return-object p2
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 568
    return-void
.end method

.method public c(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

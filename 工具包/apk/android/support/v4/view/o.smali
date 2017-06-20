.class public Landroid/support/v4/view/o;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/o$a;,
        Landroid/support/v4/view/o$k;,
        Landroid/support/v4/view/o$j;,
        Landroid/support/v4/view/o$i;,
        Landroid/support/v4/view/o$h;,
        Landroid/support/v4/view/o$g;,
        Landroid/support/v4/view/o$f;,
        Landroid/support/v4/view/o$d;,
        Landroid/support/v4/view/o$e;,
        Landroid/support/v4/view/o$c;,
        Landroid/support/v4/view/o$b;,
        Landroid/support/v4/view/o$l;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/o$l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1819
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1820
    invoke-static {}, Landroid/support/v4/c/a;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1821
    new-instance v0, Landroid/support/v4/view/o$a;

    invoke-direct {v0}, Landroid/support/v4/view/o$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    .line 1843
    :goto_f
    return-void

    .line 1822
    :cond_10
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 1823
    new-instance v0, Landroid/support/v4/view/o$k;

    invoke-direct {v0}, Landroid/support/v4/view/o$k;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1824
    :cond_1c
    const/16 v1, 0x15

    if-lt v0, v1, :cond_28

    .line 1825
    new-instance v0, Landroid/support/v4/view/o$j;

    invoke-direct {v0}, Landroid/support/v4/view/o$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1826
    :cond_28
    const/16 v1, 0x13

    if-lt v0, v1, :cond_34

    .line 1827
    new-instance v0, Landroid/support/v4/view/o$i;

    invoke-direct {v0}, Landroid/support/v4/view/o$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1828
    :cond_34
    const/16 v1, 0x12

    if-lt v0, v1, :cond_40

    .line 1829
    new-instance v0, Landroid/support/v4/view/o$h;

    invoke-direct {v0}, Landroid/support/v4/view/o$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1830
    :cond_40
    const/16 v1, 0x11

    if-lt v0, v1, :cond_4c

    .line 1831
    new-instance v0, Landroid/support/v4/view/o$g;

    invoke-direct {v0}, Landroid/support/v4/view/o$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1832
    :cond_4c
    const/16 v1, 0x10

    if-lt v0, v1, :cond_58

    .line 1833
    new-instance v0, Landroid/support/v4/view/o$f;

    invoke-direct {v0}, Landroid/support/v4/view/o$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1834
    :cond_58
    const/16 v1, 0xf

    if-lt v0, v1, :cond_64

    .line 1835
    new-instance v0, Landroid/support/v4/view/o$d;

    invoke-direct {v0}, Landroid/support/v4/view/o$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1836
    :cond_64
    const/16 v1, 0xe

    if-lt v0, v1, :cond_70

    .line 1837
    new-instance v0, Landroid/support/v4/view/o$e;

    invoke-direct {v0}, Landroid/support/v4/view/o$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1838
    :cond_70
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7c

    .line 1839
    new-instance v0, Landroid/support/v4/view/o$c;

    invoke-direct {v0}, Landroid/support/v4/view/o$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f

    .line 1841
    :cond_7c
    new-instance v0, Landroid/support/v4/view/o$b;

    invoke-direct {v0}, Landroid/support/v4/view/o$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    goto :goto_f
.end method

.method public static a(III)I
    .registers 4

    .prologue
    .line 2448
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/o$l;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;
    .registers 3

    .prologue
    .line 3036
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2068
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;)V

    .line 2069
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 2292
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2293
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .registers 3

    .prologue
    .line 2022
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 2023
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/h;)V
    .registers 3

    .prologue
    .line 3020
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;Landroid/support/v4/view/h;)V

    .line 3021
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 2100
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2101
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3

    .prologue
    .line 1853
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2136
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0}, Landroid/support/v4/view/o$l;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;
    .registers 3

    .prologue
    .line 3053
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->b(Landroid/view/View;Landroid/support/v4/view/t;)Landroid/support/v4/view/t;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 2160
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/o$l;->b(Landroid/view/View;I)V

    .line 2161
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2487
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$l;

    invoke-interface {v0, p0}, Landroid/support/v4/view/o$l;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

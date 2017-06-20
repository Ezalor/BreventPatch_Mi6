.class public Landroid/support/v4/view/a/b;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/a/b$d;,
        Landroid/support/v4/view/a/b$c;,
        Landroid/support/v4/view/a/b$b;,
        Landroid/support/v4/view/a/b$a;,
        Landroid/support/v4/view/a/b$j;,
        Landroid/support/v4/view/a/b$i;,
        Landroid/support/v4/view/a/b$h;,
        Landroid/support/v4/view/a/b$g;,
        Landroid/support/v4/view/a/b$e;,
        Landroid/support/v4/view/a/b$k;,
        Landroid/support/v4/view/a/b$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/a/b$f;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 2342
    new-instance v0, Landroid/support/v4/view/a/b$d;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    .line 2362
    :goto_d
    return-void

    .line 2343
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 2344
    new-instance v0, Landroid/support/v4/view/a/b$c;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2345
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2a

    .line 2346
    new-instance v0, Landroid/support/v4/view/a/b$b;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2347
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_38

    .line 2348
    new-instance v0, Landroid/support/v4/view/a/b$a;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2349
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_46

    .line 2350
    new-instance v0, Landroid/support/v4/view/a/b$j;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2351
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_54

    .line 2352
    new-instance v0, Landroid/support/v4/view/a/b$i;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2353
    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_62

    .line 2354
    new-instance v0, Landroid/support/v4/view/a/b$h;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2355
    :cond_62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_70

    .line 2356
    new-instance v0, Landroid/support/v4/view/a/b$g;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2357
    :cond_70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_7e

    .line 2358
    new-instance v0, Landroid/support/v4/view/a/b$e;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d

    .line 2360
    :cond_7e
    new-instance v0, Landroid/support/v4/view/a/b$k;

    invoke-direct {v0}, Landroid/support/v4/view/a/b$k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    iput-object p1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    .line 2762
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4470
    sparse-switch p0, :sswitch_data_3c

    .line 4508
    const-string v0, "ACTION_UNKNOWN"

    :goto_5
    return-object v0

    .line 4472
    :sswitch_6
    const-string v0, "ACTION_FOCUS"

    goto :goto_5

    .line 4474
    :sswitch_9
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_5

    .line 4476
    :sswitch_c
    const-string v0, "ACTION_SELECT"

    goto :goto_5

    .line 4478
    :sswitch_f
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_5

    .line 4480
    :sswitch_12
    const-string v0, "ACTION_CLICK"

    goto :goto_5

    .line 4482
    :sswitch_15
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_5

    .line 4484
    :sswitch_18
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_5

    .line 4486
    :sswitch_1b
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_5

    .line 4488
    :sswitch_1e
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_5

    .line 4490
    :sswitch_21
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_5

    .line 4492
    :sswitch_24
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_5

    .line 4494
    :sswitch_27
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_5

    .line 4496
    :sswitch_2a
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_5

    .line 4498
    :sswitch_2d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_5

    .line 4500
    :sswitch_30
    const-string v0, "ACTION_CUT"

    goto :goto_5

    .line 4502
    :sswitch_33
    const-string v0, "ACTION_COPY"

    goto :goto_5

    .line 4504
    :sswitch_36
    const-string v0, "ACTION_PASTE"

    goto :goto_5

    .line 4506
    :sswitch_39
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_5

    .line 4470
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_c
        0x8 -> :sswitch_f
        0x10 -> :sswitch_12
        0x20 -> :sswitch_15
        0x40 -> :sswitch_18
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_21
        0x400 -> :sswitch_24
        0x800 -> :sswitch_27
        0x1000 -> :sswitch_2a
        0x2000 -> :sswitch_2d
        0x4000 -> :sswitch_33
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_30
        0x20000 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 3007
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/b$f;->a(Ljava/lang/Object;I)V

    .line 3008
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 3183
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/b$f;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3184
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 3587
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/b$f;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3588
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 3512
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/b$f;->a(Ljava/lang/Object;Z)V

    .line 3513
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 2992
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 3207
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/b$f;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3208
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 3231
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 3255
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 3279
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4405
    if-ne p0, p1, :cond_5

    .line 4422
    :cond_4
    :goto_4
    return v0

    .line 4408
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 4409
    goto :goto_4

    .line 4411
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 4412
    goto :goto_4

    .line 4414
    :cond_15
    check-cast p1, Landroid/support/v4/view/a/b;

    .line 4415
    iget-object v2, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 4416
    iget-object v2, p1, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 4417
    goto :goto_4

    .line 4419
    :cond_21
    iget-object v2, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 4420
    goto :goto_4
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 3303
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 3377
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 3401
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 4400
    iget-object v0, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 3425
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 3449
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 3473
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 3497
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3548
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3572
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3596
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3620
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3677
    sget-object v0, Landroid/support/v4/view/a/b;->a:Landroid/support/v4/view/a/b$f;

    iget-object v1, p0, Landroid/support/v4/view/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/b$f;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4428
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4432
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/b;->a(Landroid/graphics/Rect;)V

    .line 4433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/b;->b(Landroid/graphics/Rect;)V

    .line 4436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    const-string v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->m()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4439
    const-string v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->n()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4440
    const-string v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->o()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4441
    const-string v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->p()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4442
    const-string v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    const-string v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4445
    const-string v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4446
    const-string v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4447
    const-string v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4448
    const-string v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->g()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4449
    const-string v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4450
    const-string v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4451
    const-string v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4452
    const-string v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    const-string v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4456
    invoke-virtual {p0}, Landroid/support/v4/view/a/b;->b()I

    move-result v0

    :cond_11c
    :goto_11c
    if-eqz v0, :cond_136

    .line 4457
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 4458
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 4459
    invoke-static {v2}, Landroid/support/v4/view/a/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    if-eqz v0, :cond_11c

    .line 4461
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11c

    .line 4464
    :cond_136
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

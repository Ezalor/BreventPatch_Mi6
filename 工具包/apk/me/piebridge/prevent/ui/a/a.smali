.class public Lme/piebridge/prevent/ui/a/a;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static a:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lme/piebridge/prevent/ui/a/a;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static a(II)I
    .registers 4

    .prologue
    .line 64
    const v0, 0xffffff

    and-int/2addr v0, p0

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 5

    .prologue
    .line 78
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    iget v1, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v1}, Lme/piebridge/prevent/ui/a/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 81
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 83
    :goto_17
    return v0

    :cond_18
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_17
.end method

.method public static a(I)Ljava/lang/String;
    .registers 13

    .prologue
    .line 28
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 29
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 30
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 31
    and-int/lit16 v3, p0, 0xff

    .line 32
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "rgba(%d, %d, %d, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    sget-object v2, Lme/piebridge/prevent/ui/a/a;->a:Ljava/text/DecimalFormat;

    int-to-double v8, v0

    const-wide v10, 0x406fe00000000000L    # 255.0

    div-double/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)I
    .registers 3

    .prologue
    .line 68
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 69
    const/16 v1, 0xff

    if-ne v0, v1, :cond_e

    .line 71
    const/high16 v0, -0x22000000

    invoke-static {p0, v0}, Lme/piebridge/prevent/ui/a/a;->a(II)I

    move-result p0

    .line 73
    :cond_e
    return p0
.end method

.method private static c(I)Z
    .registers 2

    .prologue
    .line 88
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

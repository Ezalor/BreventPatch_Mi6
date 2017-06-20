.class public Lme/piebridge/prevent/ui/a/j;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string v0, "\u0085\u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u2028\u2029\u202f\u205f\u3000"

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lme/piebridge/prevent/ui/a/j;->a:[C

    .line 8
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 29
    if-eqz p0, :cond_33

    .line 30
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 31
    const/4 v0, 0x0

    move v2, v0

    .line 33
    :goto_a
    if-gt v2, v1, :cond_34

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/j;->a(C)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 36
    :goto_1a
    if-lt v0, v2, :cond_29

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lme/piebridge/prevent/ui/a/j;->a(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 37
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 39
    :cond_29
    if-nez v2, :cond_2d

    if-eq v0, v1, :cond_33

    .line 40
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 43
    :cond_33
    return-object p0

    :cond_34
    move v0, v1

    goto :goto_1a
.end method

.method private static a(C)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    const/16 v2, 0x20

    if-gt p0, v2, :cond_7

    .line 25
    :cond_6
    :goto_6
    return v0

    .line 20
    :cond_7
    sget-object v3, Lme/piebridge/prevent/ui/a/j;->a:[C

    array-length v4, v3

    move v2, v1

    :goto_b
    if-ge v2, v4, :cond_14

    aget-char v5, v3, v2

    .line 21
    if-eq v5, p0, :cond_6

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    move v0, v1

    .line 25
    goto :goto_6
.end method

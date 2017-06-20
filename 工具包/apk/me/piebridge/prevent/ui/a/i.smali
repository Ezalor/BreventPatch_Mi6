.class public Lme/piebridge/prevent/ui/a/i;
.super Ljava/lang/Object;
.source "StatusUtils.java"


# static fields
.field private static a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    .line 23
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    const v2, 0x7f05001b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f4

    const v2, 0x7f05001c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const v2, 0x7f05001d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x7d

    const v2, 0x7f05001e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x3e8

    const v2, 0x7f05001f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x82

    const v2, 0x7f050021

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x12c

    const v2, 0x7f050022

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x96

    const v2, 0x7f050024

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    const v2, 0x7f050025

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, -0x64

    const v2, 0x7f050020

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    const/16 v1, -0x12c

    const v2, 0x7f050023

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    return-void
.end method

.method public static a(Ljava/util/Set;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    const v0, 0x7f020001

    .line 92
    if-nez p0, :cond_6

    .line 100
    :cond_5
    :goto_5
    return v0

    .line 95
    :cond_6
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/i;->b(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 96
    const v0, 0x7f020004

    goto :goto_5

    .line 97
    :cond_10
    if-nez p1, :cond_5

    .line 100
    const v0, 0x7f020005

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/CharSequence;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x12c

    .line 41
    if-nez p1, :cond_c

    .line 42
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_b
    return-object v0

    .line 44
    :cond_c
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_29
    invoke-static {p0, p1}, Lme/piebridge/prevent/ui/a/i;->b(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b
.end method

.method private static a(Ljava/util/Set;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 69
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 72
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 77
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/CharSequence;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 53
    invoke-static {}, Lme/piebridge/prevent/a/h;->a()J

    move-result-wide v2

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 55
    sget-object v5, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 56
    if-nez v5, :cond_37

    .line 57
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 58
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 60
    :cond_37
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 63
    :cond_3f
    invoke-static {v1}, Lme/piebridge/prevent/ui/a/i;->a(Ljava/util/Set;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Set;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 83
    sget-object v3, Lme/piebridge/prevent/ui/a/i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 84
    if-nez v3, :cond_5

    .line 85
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_29

    const/4 v0, 0x1

    .line 88
    :goto_28
    return v0

    :cond_29
    move v0, v1

    .line 85
    goto :goto_28

    :cond_2b
    move v0, v1

    .line 88
    goto :goto_28
.end method

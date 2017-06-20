.class public Landroid/support/v4/a/e;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/e$a;,
        Landroid/support/v4/a/e$f;,
        Landroid/support/v4/a/e$g;,
        Landroid/support/v4/a/e$c;,
        Landroid/support/v4/a/e$b;,
        Landroid/support/v4/a/e$q;,
        Landroid/support/v4/a/e$d;,
        Landroid/support/v4/a/e$k;,
        Landroid/support/v4/a/e$j;,
        Landroid/support/v4/a/e$i;,
        Landroid/support/v4/a/e$p;,
        Landroid/support/v4/a/e$o;,
        Landroid/support/v4/a/e$n;,
        Landroid/support/v4/a/e$m;,
        Landroid/support/v4/a/e$l;,
        Landroid/support/v4/a/e$e;,
        Landroid/support/v4/a/e$h;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/a/e$h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 940
    invoke-static {}, Landroid/support/v4/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 941
    new-instance v0, Landroid/support/v4/a/e$k;

    invoke-direct {v0}, Landroid/support/v4/a/e$k;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    .line 957
    :goto_d
    return-void

    .line 942
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 943
    new-instance v0, Landroid/support/v4/a/e$j;

    invoke-direct {v0}, Landroid/support/v4/a/e$j;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d

    .line 944
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2a

    .line 945
    new-instance v0, Landroid/support/v4/a/e$i;

    invoke-direct {v0}, Landroid/support/v4/a/e$i;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d

    .line 946
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_38

    .line 947
    new-instance v0, Landroid/support/v4/a/e$p;

    invoke-direct {v0}, Landroid/support/v4/a/e$p;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d

    .line 948
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_46

    .line 949
    new-instance v0, Landroid/support/v4/a/e$o;

    invoke-direct {v0}, Landroid/support/v4/a/e$o;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d

    .line 950
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_54

    .line 951
    new-instance v0, Landroid/support/v4/a/e$n;

    invoke-direct {v0}, Landroid/support/v4/a/e$n;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d

    .line 952
    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_62

    .line 953
    new-instance v0, Landroid/support/v4/a/e$m;

    invoke-direct {v0}, Landroid/support/v4/a/e$m;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d

    .line 955
    :cond_62
    new-instance v0, Landroid/support/v4/a/e$l;

    invoke-direct {v0}, Landroid/support/v4/a/e$l;-><init>()V

    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$h;

    goto :goto_d
.end method

.method static a(Landroid/support/v4/a/c;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/e$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/e$a;

    .line 878
    invoke-interface {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/support/v4/a/i$a;)V

    goto :goto_4

    .line 880
    :cond_14
    return-void
.end method

.method static a(Landroid/support/v4/a/d;Landroid/support/v4/a/e$q;)V
    .registers 9

    .prologue
    .line 884
    if-eqz p1, :cond_13

    .line 885
    instance-of v0, p1, Landroid/support/v4/a/e$c;

    if-eqz v0, :cond_14

    .line 886
    check-cast p1, Landroid/support/v4/a/e$c;

    .line 887
    iget-object v0, p1, Landroid/support/v4/a/e$c;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/a/e$c;->f:Z

    iget-object v2, p1, Landroid/support/v4/a/e$c;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/a/e$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/d;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 910
    :cond_13
    :goto_13
    return-void

    .line 892
    :cond_14
    instance-of v0, p1, Landroid/support/v4/a/e$f;

    if-eqz v0, :cond_26

    .line 893
    check-cast p1, Landroid/support/v4/a/e$f;

    .line 894
    iget-object v0, p1, Landroid/support/v4/a/e$f;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/a/e$f;->f:Z

    iget-object v2, p1, Landroid/support/v4/a/e$f;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/a/e$f;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/d;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_13

    .line 899
    :cond_26
    instance-of v0, p1, Landroid/support/v4/a/e$b;

    if-eqz v0, :cond_13

    .line 900
    check-cast p1, Landroid/support/v4/a/e$b;

    .line 901
    iget-object v1, p1, Landroid/support/v4/a/e$b;->d:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/a/e$b;->f:Z

    iget-object v3, p1, Landroid/support/v4/a/e$b;->e:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/a/e$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/a/e$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/a/e$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/d;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_13
.end method

.method static b(Landroid/support/v4/a/d;Landroid/support/v4/a/e$q;)V
    .registers 12

    .prologue
    .line 914
    if-eqz p1, :cond_63

    .line 915
    instance-of v0, p1, Landroid/support/v4/a/e$g;

    if-eqz v0, :cond_64

    .line 916
    check-cast p1, Landroid/support/v4/a/e$g;

    .line 917
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 918
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 919
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 921
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 923
    iget-object v0, p1, Landroid/support/v4/a/e$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/e$g$a;

    .line 924
    invoke-virtual {v0}, Landroid/support/v4/a/e$g$a;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-virtual {v0}, Landroid/support/v4/a/e$g$a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-virtual {v0}, Landroid/support/v4/a/e$g$a;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {v0}, Landroid/support/v4/a/e$g$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {v0}, Landroid/support/v4/a/e$g$a;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 930
    :cond_5b
    iget-object v1, p1, Landroid/support/v4/a/e$g;->a:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/a/e$g;->b:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/support/v4/a/h;->a(Landroid/support/v4/a/d;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 937
    :cond_63
    :goto_63
    return-void

    .line 934
    :cond_64
    invoke-static {p0, p1}, Landroid/support/v4/a/e;->a(Landroid/support/v4/a/d;Landroid/support/v4/a/e$q;)V

    goto :goto_63
.end method

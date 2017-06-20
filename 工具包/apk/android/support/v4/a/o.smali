.class Landroid/support/v4/a/o;
.super Ljava/lang/Object;
.source "RemoteInputCompatApi20.java"


# direct methods
.method static a([Landroid/support/v4/a/p$a;)[Landroid/app/RemoteInput;
    .registers 6

    .prologue
    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    .line 52
    :goto_3
    return-object v0

    .line 42
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/app/RemoteInput;

    .line 43
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_3f

    .line 44
    aget-object v2, p0, v0

    .line 45
    new-instance v3, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v2}, Landroid/support/v4/a/p$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Landroid/support/v4/a/p$a;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v2}, Landroid/support/v4/a/p$a;->c()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v2}, Landroid/support/v4/a/p$a;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v2}, Landroid/support/v4/a/p$a;->e()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3f
    move-object v0, v1

    .line 52
    goto :goto_3
.end method

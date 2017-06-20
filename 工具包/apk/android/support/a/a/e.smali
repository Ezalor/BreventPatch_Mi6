.class Landroid/support/a/a/e;
.super Ljava/lang/Object;
.source "FragmentCompatICSMR1.java"


# direct methods
.method public static a(Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 26
    :cond_9
    return-void
.end method

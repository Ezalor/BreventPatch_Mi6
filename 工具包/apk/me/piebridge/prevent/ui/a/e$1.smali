.class Lme/piebridge/prevent/ui/a/e$1;
.super Ljava/lang/Object;
.source "LabelLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/a/e;->b(Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/pm/ApplicationInfo;

.field final synthetic b:Lme/piebridge/prevent/ui/a/e;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/a/e;Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .prologue
    .line 40
    iput-object p1, p0, Lme/piebridge/prevent/ui/a/e$1;->b:Lme/piebridge/prevent/ui/a/e;

    iput-object p2, p0, Lme/piebridge/prevent/ui/a/e$1;->a:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/e$1;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lme/piebridge/prevent/ui/a/e$1;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lme/piebridge/prevent/ui/a/e$1;->b:Lme/piebridge/prevent/ui/a/e;

    invoke-static {v2}, Lme/piebridge/prevent/ui/a/e;->a(Lme/piebridge/prevent/ui/a/e;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/ui/a/j;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lme/piebridge/prevent/ui/a/e$1;->b:Lme/piebridge/prevent/ui/a/e;

    invoke-static {v2}, Lme/piebridge/prevent/ui/a/e;->b(Lme/piebridge/prevent/ui/a/e;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 46
    iget-object v2, p0, Lme/piebridge/prevent/ui/a/e$1;->b:Lme/piebridge/prevent/ui/a/e;

    invoke-static {v2}, Lme/piebridge/prevent/ui/a/e;->b(Lme/piebridge/prevent/ui/a/e;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    :cond_39
    return-void
.end method

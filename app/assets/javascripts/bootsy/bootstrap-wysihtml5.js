// https://github.com/volmer/bootsy/blob/master/app/assets/javascripts/bootsy/bootstrap-wysihtml5.js

!function($, wysi) {
    "use strict";

    var tpl = {
        "font-styles": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li class='dropdown'>" +
              "<a class='btn btn-default dropdown-toggle" + size + "' data-toggle='dropdown' href='#' title='" + locale.font_styles.title + "'>" +
              "<i class='glyphicon glyphicon-font'></i>&nbsp;<span class='current-font'>" + locale.font_styles.normal + "</span>&nbsp;<b class='caret'></b>" +
              "</a>" +
              "<ul class='dropdown-menu'>" +
                "<li><a data-wysihtml5-command='formatBlock' data-wysihtml5-command-value='div' tabindex='-1' role='menuitem'>" + locale.font_styles.normal + "</a></li>" +
                "<li><a data-wysihtml5-command='formatBlock' data-wysihtml5-command-value='h1' tabindex='-1' role='menuitem'>" + locale.font_styles.h1 + "</a></li>" +
                "<li><a data-wysihtml5-command='formatBlock' data-wysihtml5-command-value='h2' tabindex='-1' role='menuitem'>" + locale.font_styles.h2 + "</a></li>" +
                "<li><a data-wysihtml5-command='formatBlock' data-wysihtml5-command-value='h3' tabindex='-1' role='menuitem'>" + locale.font_styles.h3 + "</a></li>" +
              "</ul>" +
            "</li>";
        },

        "emphasis": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='btn-group'>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='bold' title='CTRL+B' tabindex='-1'>" + locale.emphasis.bold + "</a>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='italic' title='CTRL+I' tabindex='-1'>" + locale.emphasis.italic + "</a>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='underline' title='CTRL+U' tabindex='-1'>" + locale.emphasis.underline + "</a>" +
              "</div>" +
            "</li>";
        },

        "lists": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='btn-group'>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='insertUnorderedList' title='" + locale.lists.unordered + "' tabindex='-1'><i class='glyphicon glyphicon-list'></i></a>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='insertOrderedList' title='" + locale.lists.ordered + "' tabindex='-1'><i class='glyphicon glyphicon-th-list'></i></a>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='Outdent' title='" + locale.lists.outdent + "' tabindex='-1'><i class='glyphicon glyphicon-indent-left'></i></a>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-command='Indent' title='" + locale.lists.indent + "' tabindex='-1'><i class='glyphicon glyphicon-indent-right'></i></a>" +
              "</div>" +
            "</li>";
        },

        "link": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='bootstrap-wysihtml5-insert-link-modal modal fade' tabindex='-1' role='dialog' aria-hidden='true'>" +
                "<div class='modal-dialog'>" +
                  "<div class='modal-content'>" +
                    "<div class='modal-header'>" +
                      "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>" +
                      "<h3 class='modal-title'>" + locale.link.insert + "</h3>" +
                    "</div>" +
                    "<div class='modal-body'>" +
                      "<input value='http://' class='bootstrap-wysihtml5-insert-link-url form-control input-lg'>" +
                    "</div>" +
                    "<div class='modal-footer'>" +
                      "<a href='#' class='btn btn-default' data-dismiss='modal'>" + locale.link.cancel + "</a>" +
                      "<a href='#' class='btn btn-primary' data-dismiss='modal'>" + locale.link.insert + "</a>" +
                    "</div>" +
                  "</div>" +
                "</div>" +
              "</div>" +
              "<a class='btn btn-default " + size + "' data-wysihtml5-command='createLink' title='" + locale.link.insert + "' tabindex='-1'><i class='glyphicon glyphicon-share'></i></a>" +
            "</li>";
        },

        "image": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='bootstrap-wysihtml5-insert-image-modal modal fade' tabindex='-1' role='dialog' aria-hidden='true'>" +
                "<div class='modal-dialog'>" +
                  "<div class='modal-content'>" +
                    "<div class='modal-header'>" +
                      "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>" +
                      "<h3 class='modal-title'>" + locale.image.insert + "</h3>" +
                    "</div>" +
                    "<div class='modal-body'>" +
                      "<input value='http://' class='bootstrap-wysihtml5-insert-image-url form-control input-lg'>" +
                    "</div>" +
                    "<div class='modal-footer'>" +
                      "<a href='#' class='btn btn-default ' data-dismiss='modal'>" + locale.image.cancel + "</a>" +
                      "<a href='#' class='btn btn-primary' data-dismiss='modal'>" + locale.image.insert + "</a>" +
                    "</div>" +
                  "</div>" +
                "</div>" +
              "</div>" +
              "<a class='btn btn-default " + size + "' data-wysihtml5-command='insertImage' title='" + locale.image.insert + "' tabindex='-1'><i class='glyphicon glyphicon-picture'></i></a>" +
            "</li>";
        },

        "html": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='btn-group'>" +
                "<a class='btn btn-default " + size + "' data-wysihtml5-action='change_view' title='" + locale.html.edit + "' tabindex='-1'><i class='glyphicon glyphicon-pencil'></i></a>" +
              "</div>" +
            "</li>";
        },

        "color": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li class='dropdown'>" +
              "<a class='btn btn-default dropdown-toggle" + size + "' data-toggle='dropdown' href='#' tabindex='-1' title='" + locale.colours.title + "'>" +
                "<span class='current-color'>" + locale.colours.black + "</span>&nbsp;<b class='caret'></b>" +
              "</a>" +
              "<ul class='dropdown-menu'>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='black'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='black' role='menuitem'>" + locale.colours.black + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='silver'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='silver' role='menuitem'>" + locale.colours.silver + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='gray'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='gray' role='menuitem'>" + locale.colours.gray + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='maroon'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='maroon' role='menuitem'>" + locale.colours.maroon + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='red'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='red' role='menuitem'>" + locale.colours.red + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='purple'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='purple' role='menuitem'>" + locale.colours.purple + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='green'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='green' role='menuitem'>" + locale.colours.green + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='olive'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='olive' role='menuitem'>" + locale.colours.olive + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='navy'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='navy' role='menuitem'>" + locale.colours.navy + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='blue'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='blue' role='menuitem'>" + locale.colours.blue + "</a></li>" +
                "<li><div class='wysihtml5-colors' data-wysihtml5-command-value='orange'></div><a class='wysihtml5-colors-title' data-wysihtml5-command='foreColor' data-wysihtml5-command-value='orange' role='menuitem'>" + locale.colours.orange + "</a></li>" +
              "</ul>" +
            "</li>";
        },

        "user": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='bootstrap-wysihtml5-insert-user-modal modal fade input-group input-group-lg' tabindex='-1' role='dialog' aria-hidden='true'>" +
                "<div class='modal-dialog'>" +
                  "<div class='modal-content'>" +
                    "<div class='modal-header'>" +
                      "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>" +
                      "<h3 class='modal-title'>" + locale.user.insert + "</h3>" +
                    "</div>" +
                    "<div class='modal-body'>" +
                      "<input value='' class='bootstrap-wysihtml5-insert-user-name form-control input-lg'>" +
                    "</div>" +
                    "<div class='modal-footer'>" +
                      "<a href='#' class='btn btn-default' data-dismiss='modal'>" + locale.user.cancel + "</a>" +
                      "<a href='#' class='btn btn-primary' data-dismiss='modal'>" + locale.user.insert + "</a>" +
                    "</div>" +
                  "</div>" +
                "</div>" +
              "</div>" +
              "<a class='btn btn-default " + size + "' data-wysihtml5-command='createUser' title='" + locale.user.insert + "' tabindex='-1'><i class='glyphicon glyphicon-user'></i></a>" +
            "</li>";
        },

        "player": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='bootstrap-wysihtml5-insert-player-modal modal fade input-group input-group-lg' tabindex='-1' role='dialog' aria-hidden='true'>" +
                "<div class='modal-dialog'>" +
                  "<div class='modal-content'>" +
                    "<div class='modal-header'>" +
                      "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>" +
                      "<h3 class='modal-title'>" + locale.player.insert + "</h3>" +
                    "</div>" +
                    "<div class='modal-body'>" +
                      "<input value='' class='bootstrap-wysihtml5-insert-player-name form-control input-lg'>" +
                    "</div>" +
                    "<div class='modal-footer'>" +
                      "<a href='#' class='btn btn-default' data-dismiss='modal'>" + locale.player.cancel + "</a>" +
                      "<a href='#' class='btn btn-primary' data-dismiss='modal'>" + locale.player.insert + "</a>" +
                    "</div>" +
                  "</div>" +
                "</div>" +
              "</div>" +
              "<a class='btn btn-default " + size + "' data-wysihtml5-command='createPlayer' title='" + locale.player.insert + "' tabindex='-1'><i class='glyphicon glyphicon-user'></i></a>" +
            "</li>";
        },

        "news": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='bootstrap-wysihtml5-insert-news-modal modal fade input-group input-group-lg' tabindex='-1' role='dialog' aria-hidden='true'>" +
                "<div class='modal-dialog'>" +
                  "<div class='modal-content'>" +
                    "<div class='modal-header'>" +
                      "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>" +
                      "<h3 class='modal-title'>" + locale.news.insert + "</h3>" +
                    "</div>" +
                    "<div class='modal-body'>" +
                      "<input value='' class='bootstrap-wysihtml5-insert-news-title form-control input-lg'>" +
                    "</div>" +
                    "<div class='modal-footer'>" +
                      "<a href='#' class='btn btn-default' data-dismiss='modal'>" + locale.news.cancel + "</a>" +
                      "<a href='#' class='btn btn-primary' data-dismiss='modal'>" + locale.news.insert + "</a>" +
                    "</div>" +
                  "</div>" +
                "</div>" +
              "</div>" +
              "<a class='btn btn-default " + size + "' data-wysihtml5-command='createNews' title='" + locale.news.insert + "' tabindex='-1'><i class='glyphicon glyphicon-comment'></i></a>" +
            "</li>";
        },

        "team": function(locale, options) {
            var size = (options && options.size) ? ' btn-'+options.size : '';
            return "<li>" +
              "<div class='bootstrap-wysihtml5-insert-team-modal modal fade input-group input-group-lg' tabindex='-1' role='dialog' aria-hidden='true'>" +
                "<div class='modal-dialog'>" +
                  "<div class='modal-content'>" +
                    "<div class='modal-header'>" +
                      "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>" +
                      "<h3 class='modal-title'>" + locale.team.insert + "</h3>" +
                    "</div>" +
                    "<div class='modal-body'>" +
                      "<input value='' class='bootstrap-wysihtml5-insert-team-title form-control input-lg'>" +
                    "</div>" +
                    "<div class='modal-footer'>" +
                      "<a href='#' class='btn btn-default' data-dismiss='modal'>" + locale.team.cancel + "</a>" +
                      "<a href='#' class='btn btn-primary' data-dismiss='modal'>" + locale.team.insert + "</a>" +
                    "</div>" +
                  "</div>" +
                "</div>" +
              "</div>" +
              "<a class='btn btn-default " + size + "' data-wysihtml5-command='createTeam' title='" + locale.team.insert + "' tabindex='-1'><i class='glyphicon glyphicon-modal-window'></i></a>" +
            "</li>";
        }
    };

    var templates = function(key, locale, options) {
        return tpl[key](locale, options);
    };


    var Wysihtml5 = function(el, options) {
        this.el = el;
        var toolbarOpts = options || defaultOptions;
        for(var t in toolbarOpts.customTemplates) {
          tpl[t] = toolbarOpts.customTemplates[t];
        }
        this.toolbar = this.createToolbar(el, toolbarOpts);
        this.editor =  this.createEditor(options);

        window.editor = this.editor;

        $('iframe.wysihtml5-sandbox').each(function(i, el){
            $(el.contentWindow).off('focus.wysihtml5').on({
                'focus.wysihtml5' : function(){
                    $('li.dropdown').removeClass('open');
                }
            });
        });
    };

    Wysihtml5.prototype = {

        constructor: Wysihtml5,

        createEditor: function(options) {
            options = options || {};

            // Add the toolbar to a clone of the options object so multiple instances
            // of the WYISYWG don't break because "toolbar" is already defined
            options = $.extend(true, {}, options);
            options.toolbar = this.toolbar[0];

            var editor = new wysi.Editor(this.el[0], options);

            if(options && options.events) {
                for(var eventName in options.events) {
                    editor.on(eventName, options.events[eventName]);
                }
            }
            return editor;
        },

        createToolbar: function(el, options) {
            var self = this;
            var toolbar = $("<ul/>", {
                'class' : "wysihtml5-toolbar",
                'style': "display:none"
            });
            var culture = options.locale || defaultOptions.locale || "en";
            for(var key in defaultOptions) {
                var value = false;

                if(options[key] !== undefined) {
                    if(options[key] === true) {
                        value = true;
                    }
                } else {
                    value = defaultOptions[key];
                }

                if(value === true) {
                    toolbar.append(templates(key, locale[culture], options));

                    if(key === "html") {
                        this.initHtml(toolbar);
                    }

                    if(key === "link") {
                        this.initInsertLink(toolbar);
                    }

                    if(key === "image") {
                        this.initInsertImage(toolbar);
                    }

                    if(key === "user") {
                        this.initInsertUser(toolbar);
                    }

                    if(key === "player") {
                        this.initInsertPlayer(toolbar);
                    }

                    if(key === "news") {
                        this.initInsertNews(toolbar);
                    }

                    if(key === "team") {
                        this.initInsertTeam(toolbar);
                    }

                    if(key == "customCommand") {
                        this.initCustomCommand(toolbar, options.customCommandCallback);
                    }
                }
            }

            if(options.toolbar) {
                for(key in options.toolbar) {
                    toolbar.append(options.toolbar[key]);
                }
            }

            toolbar.find("a[data-wysihtml5-command='formatBlock']").click(function(e) {
                var target = e.target || e.srcElement;
                var el = $(target);
                self.toolbar.find('.current-font').text(el.html());
            });

            toolbar.find("a[data-wysihtml5-command='foreColor']").click(function(e) {
                var target = e.target || e.srcElement;
                var el = $(target);
                self.toolbar.find('.current-color').text(el.html());
            });

            this.el.before(toolbar);

            return toolbar;
        },

        initHtml: function(toolbar) {
            var changeViewSelector = "a[data-wysihtml5-action='change_view']";
            toolbar.find(changeViewSelector).click(function(e) {
                toolbar.find('a.btn').not(changeViewSelector).toggleClass('disabled');
            });
        },

        initInsertImage: function(toolbar) {
            var self = this;
            var insertImageModal = toolbar.find('.bootstrap-wysihtml5-insert-image-modal');
            var urlInput = insertImageModal.find('.bootstrap-wysihtml5-insert-image-url');
            var insertButton = insertImageModal.find('a.btn-primary');
            var initialValue = urlInput.val();
            var caretBookmark;

            var insertImage = function() {
                var url = urlInput.val();
                urlInput.val(initialValue);
                self.editor.currentView.element.focus();
                if (caretBookmark) {
                  self.editor.composer.selection.setBookmark(caretBookmark);
                  caretBookmark = null;
                }
                self.editor.composer.commands.exec("insertImage", url);
            };

            urlInput.keypress(function(e) {
                if(e.which == 13) {
                    insertImage();
                    insertImageModal.modal('hide');
                }
            });

            insertButton.click(insertImage);

            insertImageModal.on('shown', function() {
                urlInput.focus();
            });

            insertImageModal.on('hide', function() {
                self.editor.currentView.element.focus();
            });

            toolbar.find('a[data-wysihtml5-command=insertImage]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    self.editor.currentView.element.focus(false);
                    caretBookmark = self.editor.composer.selection.getBookmark();
                    insertImageModal.appendTo('body').modal('show');
                    insertImageModal.on('click.dismiss.modal', '[data-dismiss="modal"]', function(e) {
                        e.stopPropagation();
                    });
                    return false;
                }
                else {
                    return true;
                }
            });
        },

        initCustomCommand: function(toolbar, callback) {
            var self = this;

            toolbar.find('a[data-wysihtml5-command=customCommand]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    callback(self.editor);
                    return false;
                }
                else {
                    return true;
                }
            });
        },

        initInsertLink: function(toolbar) {
            var self = this;
            var insertLinkModal = toolbar.find('.bootstrap-wysihtml5-insert-link-modal');
            var urlInput = insertLinkModal.find('.bootstrap-wysihtml5-insert-link-url');
            var insertButton = insertLinkModal.find('a.btn-primary');
            var initialValue = urlInput.val();
            var caretBookmark;

            var insertLink = function() {
                var url = urlInput.val();
                urlInput.val(initialValue);
                self.editor.currentView.element.focus();
                if (caretBookmark) {
                  self.editor.composer.selection.setBookmark(caretBookmark);
                  caretBookmark = null;
                }
                self.editor.composer.commands.exec("createLink", {
                    href: url,
                    target: "_blank",
                    rel: "nofollow"
                });
            };
            var pressedEnter = false;

            urlInput.keypress(function(e) {
                if(e.which == 13) {
                    insertLink();
                    insertLinkModal.modal('hide');
                }
            });

            insertButton.click(insertLink);

            insertLinkModal.on('shown', function() {
                urlInput.focus();
            });

            insertLinkModal.on('hide', function() {
                self.editor.currentView.element.focus();
            });

            toolbar.find('a[data-wysihtml5-command=createLink]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    self.editor.currentView.element.focus(false);
                    caretBookmark = self.editor.composer.selection.getBookmark();
                    insertLinkModal.appendTo('body').modal('show');
                    insertLinkModal.on('click.dismiss.modal', '[data-dismiss="modal"]', function(e) {
                        e.stopPropagation();
                    });
                    return false;
                }
                else {
                    return true;
                }
            });
        },

        initInsertUser: function(toolbar) {
            var self = this;
            var insertUserModal = toolbar.find('.bootstrap-wysihtml5-insert-user-modal');
            var nameInput = insertUserModal.find('.bootstrap-wysihtml5-insert-user-name');
            var insertButton = insertUserModal.find('a.btn-primary');
            var initialValue = nameInput.val();
            var caretBookmark;

            var insertUser = function() {
                var id_name = nameInput.val().split(':');
                var id = id_name[0];
                var name = id_name[1];
                nameInput.val(initialValue);
                self.editor.currentView.element.focus();
                if (caretBookmark) {
                  self.editor.composer.selection.setBookmark(caretBookmark);
                  caretBookmark = null;
                }

                self.editor.composer.commands.exec("insertHTML", 
                    "<a href='/:lang/users/" + id + "'>" + name + "</a>"
                );
            };
            var pressedEnter = false;

            nameInput.keypress(function(e) {
                if(e.which == 13) {
                    insertUser();
                    insertUserModal.modal('hide');
                }
            });

            insertButton.click(insertUser);

            insertUserModal.on('shown', function() {
                nameInput.focus();
            });

            insertUserModal.on('hide', function() {
                self.editor.currentView.element.focus();
            });

            toolbar.find('a[data-wysihtml5-command=createUser]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    self.editor.currentView.element.focus(false);
                    caretBookmark = self.editor.composer.selection.getBookmark();
                    insertUserModal.appendTo('body').modal('show');
                    insertUserModal.on('click.dismiss.modal', '[data-dismiss="modal"]', function(e) {
                        e.stopPropagation();
                    });
                    return false;
                }
                else {
                    return true;
                }
            });

            var engine = new Bloodhound({
                name: 'users',
                remote: {
                  'url': '/autocomplete/users?query=%QUERY'
                },
                datumTokenizer: function(d) {
                  return d;
                },
                queryTokenizer: function(d) {
                  return d;
                }
            });
            engine.initialize();

            toolbar.find('input.bootstrap-wysihtml5-insert-user-name').typeahead({
                'minLength': 2,
                'highlight': true
            }, {
                'source': engine.ttAdapter(),
                'displayKey': 'id_name'
            });
        },

        initInsertPlayer: function(toolbar) {
            var self = this;
            var insertPlayerModal = toolbar.find('.bootstrap-wysihtml5-insert-player-modal');
            var nameInput = insertPlayerModal.find('.bootstrap-wysihtml5-insert-player-name');
            var insertButton = insertPlayerModal.find('a.btn-primary');
            var initialValue = nameInput.val();
            var caretBookmark;

            var insertPlayer = function() {
                var id_name = nameInput.val().split(':');
                var id = id_name[0];
                var name = id_name[1];
                nameInput.val(initialValue);
                self.editor.currentView.element.focus();
                if (caretBookmark) {
                  self.editor.composer.selection.setBookmark(caretBookmark);
                  caretBookmark = null;
                }

                self.editor.composer.commands.exec("insertHTML", 
                    "<a href='/:lang/players/" + id + "'>" + name + "</a>"
                );
            };
            var pressedEnter = false;

            nameInput.keypress(function(e) {
                if(e.which == 13) {
                    insertPlayer();
                    insertPlayerModal.modal('hide');
                }
            });

            insertButton.click(insertPlayer);

            insertPlayerModal.on('shown', function() {
                nameInput.focus();
            });

            insertPlayerModal.on('hide', function() {
                self.editor.currentView.element.focus();
            });

            toolbar.find('a[data-wysihtml5-command=createPlayer]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    self.editor.currentView.element.focus(false);
                    caretBookmark = self.editor.composer.selection.getBookmark();
                    insertPlayerModal.appendTo('body').modal('show');
                    insertPlayerModal.on('click.dismiss.modal', '[data-dismiss="modal"]', function(e) {
                        e.stopPropagation();
                    });
                    return false;
                }
                else {
                    return true;
                }
            });

            var engine = new Bloodhound({
                name: 'players',
                remote: {
                  'url': '/autocomplete/players?query=%QUERY'
                },
                datumTokenizer: function(d) {
                  return d;
                },
                queryTokenizer: function(d) {
                  return d;
                }
            });
            engine.initialize();

            toolbar.find('input.bootstrap-wysihtml5-insert-player-name').typeahead({
                'minLength': 2,
                'highlight': true
            }, {
                'source': engine.ttAdapter(),
                'displayKey': 'id_name'
            });
        },

        initInsertNews: function(toolbar) {
            var self = this;
            var insertNewsModal = toolbar.find('.bootstrap-wysihtml5-insert-news-modal');
            var titleInput = insertNewsModal.find('.bootstrap-wysihtml5-insert-news-title');
            var insertButton = insertNewsModal.find('a.btn-primary');
            var initialValue = titleInput.val();
            var caretBookmark;

            var insertNews = function() {
                var id_title = titleInput.val().split(':');
                var id = id_title[0];
                var title = id_title[1];
                titleInput.val(initialValue);
                self.editor.currentView.element.focus();
                if (caretBookmark) {
                  self.editor.composer.selection.setBookmark(caretBookmark);
                  caretBookmark = null;
                }

                self.editor.composer.commands.exec("insertHTML", 
                    "<a href='/:lang/news/" + id + "'>" + title + "</a>"
                );
            };
            var pressedEnter = false;

            titleInput.keypress(function(e) {
                if(e.which == 13) {
                    insertNews();
                    insertNewsModal.modal('hide');
                }
            });

            insertButton.click(insertNews);

            insertNewsModal.on('shown', function() {
                titleInput.focus();
            });

            insertNewsModal.on('hide', function() {
                self.editor.currentView.element.focus();
            });

            toolbar.find('a[data-wysihtml5-command=createNews]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    self.editor.currentView.element.focus(false);
                    caretBookmark = self.editor.composer.selection.getBookmark();
                    insertNewsModal.appendTo('body').modal('show');
                    insertNewsModal.on('click.dismiss.modal', '[data-dismiss="modal"]', function(e) {
                        e.stopPropagation();
                    });
                    return false;
                }
                else {
                    return true;
                }
            });

            var engine = new Bloodhound({
                name: 'news',
                remote: {
                  'url': '/autocomplete/news?query=%QUERY'
                },
                datumTokenizer: function(d) {
                  return d;
                },
                queryTokenizer: function(d) {
                  return d;
                }
            });
            engine.initialize();

            toolbar.find('input.bootstrap-wysihtml5-insert-news-title').typeahead({
                'minLength': 2,
                'highlight': true
            }, {
                'source': engine.ttAdapter(),
                'displayKey': 'id_title'
            });
        },

        initInsertTeam: function(toolbar) {
            var self = this;
            var insertTeamModal = toolbar.find('.bootstrap-wysihtml5-insert-team-modal');
            var nameInput = insertTeamModal.find('.bootstrap-wysihtml5-insert-team-title');
            var insertButton = insertTeamModal.find('a.btn-primary');
            var initialValue = nameInput.val();
            var caretBookmark;

            var insertTeam = function() {
                var id_name = nameInput.val().split(':');
                var id = id_name[0];
                var name = id_name[1];
                nameInput.val(initialValue);
                self.editor.currentView.element.focus();
                if (caretBookmark) {
                  self.editor.composer.selection.setBookmark(caretBookmark);
                  caretBookmark = null;
                }

                self.editor.composer.commands.exec("insertHTML", 
                    "<a href='/:lang/teams/" + id + "'>" + name + "</a>"
                );
            };
            var pressedEnter = false;

            nameInput.keypress(function(e) {
                if(e.which == 13) {
                    insertTeam();
                    insertTeamModal.modal('hide');
                }
            });

            insertButton.click(insertTeam);

            insertTeamModal.on('shown', function() {
                nameInput.focus();
            });

            insertTeamModal.on('hide', function() {
                self.editor.currentView.element.focus();
            });

            toolbar.find('a[data-wysihtml5-command=createTeam]').click(function() {
                var activeButton = $(this).hasClass("wysihtml5-command-active");

                if (!activeButton) {
                    self.editor.currentView.element.focus(false);
                    caretBookmark = self.editor.composer.selection.getBookmark();
                    insertTeamModal.appendTo('body').modal('show');
                    insertTeamModal.on('click.dismiss.modal', '[data-dismiss="modal"]', function(e) {
                        e.stopPropagation();
                    });
                    return false;
                }
                else {
                    return true;
                }
            });

            var engine = new Bloodhound({
                name: 'teams',
                remote: {
                  'url': '/autocomplete/teams?query=%QUERY'
                },
                datumTokenizer: function(d) {
                  return d;
                },
                queryTokenizer: function(d) {
                  return d;
                }
            });
            engine.initialize();

            toolbar.find('input.bootstrap-wysihtml5-insert-team-title').typeahead({
                'minLength': 2,
                'highlight': true
            }, {
                'source': engine.ttAdapter(),
                'displayKey': 'id_name'
            });
        }
    };

    // these define our public api
    var methods = {
        resetDefaults: function() {
            $.fn.wysihtml5.defaultOptions = $.extend(true, {}, $.fn.wysihtml5.defaultOptionsCache);
        },
        bypassDefaults: function(options) {
            return this.each(function () {
                var $this = $(this);
                $this.data('wysihtml5', new Wysihtml5($this, options));
            });
        },
        shallowExtend: function (options) {
            var settings = $.extend({}, $.fn.wysihtml5.defaultOptions, options || {});
            var that = this;
            return methods.bypassDefaults.apply(that, [settings]);
        },
        deepExtend: function(options) {
            var settings = $.extend(true, {}, $.fn.wysihtml5.defaultOptions, options || {});
            var that = this;
            return methods.bypassDefaults.apply(that, [settings]);
        },
        init: function(options) {
            var that = this;
            return methods.shallowExtend.apply(that, [options]);
        }
    };

    $.fn.wysihtml5 = function ( method ) {
        if ( methods[method] ) {
            return methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
            return methods.init.apply( this, arguments );
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.wysihtml5' );
        }
    };

    $.fn.wysihtml5.Constructor = Wysihtml5;

    var defaultOptions = $.fn.wysihtml5.defaultOptions = {
        "font-styles": true,
        "color": true,
        "emphasis": true,
        "lists": true,
        "html": true,
        "link": true,
        "image": true,
        "user": true,
        "player": true,
        "news": true,
        "team": true,
        customCommand: false,
        events: {},
        parserRules: {
            classes: {
                // (path_to_project/lib/css/wysiwyg-color.css)
                "wysiwyg-color-silver" : 1,
                "wysiwyg-color-gray" : 1,
                "wysiwyg-color-white" : 1,
                "wysiwyg-color-maroon" : 1,
                "wysiwyg-color-red" : 1,
                "wysiwyg-color-purple" : 1,
                "wysiwyg-color-fuchsia" : 1,
                "wysiwyg-color-green" : 1,
                "wysiwyg-color-lime" : 1,
                "wysiwyg-color-olive" : 1,
                "wysiwyg-color-yellow" : 1,
                "wysiwyg-color-navy" : 1,
                "wysiwyg-color-blue" : 1,
                "wysiwyg-color-teal" : 1,
                "wysiwyg-color-aqua" : 1,
                "wysiwyg-color-orange" : 1
            },
            tags: {
                "b":  {},
                "i":  {},
                "br": {},
                "ol": {},
                "ul": {},
                "li": {},
                "h1": {},
                "h2": {},
                "h3": {},
                "blockquote": {},
                "u": 1,
                "img": {
                    "check_attributes": {
                        "width": "numbers",
                        "alt": "alt",
                        "src": "url",
                        "height": "numbers"
                    }
                },
                "a": {
                    check_attributes: {
                        href:   "href" // important to avoid XSS
                    }
                },
                "span": 1,
                "div": 1,
                // to allow save and edit files with code tag hacks
                "code": 1,
                "pre": 1
            }
        },
        stylesheets: ["./lib/css/wysiwyg-color.css"], // (path_to_project/lib/css/wysiwyg-color.css)
        locale: "en"
    };

    if (typeof $.fn.wysihtml5.defaultOptionsCache === 'undefined') {
        $.fn.wysihtml5.defaultOptionsCache = $.extend(true, {}, $.fn.wysihtml5.defaultOptions);
    }

    var locale = $.fn.wysihtml5.locale = {
        en: {
            font_styles: {
                title: "Font style",
                normal: "Normal text",
                h1: "Heading 1",
                h2: "Heading 2",
                h3: "Heading 3"
            },
            emphasis: {
                bold: "Bold",
                italic: "Italic",
                underline: "Underline"
            },
            lists: {
                unordered: "Unordered list",
                ordered: "Ordered list",
                outdent: "Outdent",
                indent: "Indent"
            },
            link: {
                insert: "Insert link",
                cancel: "Cancel"
            },
            image: {
                insert: "Insert image",
                cancel: "Cancel"
            },
            html: {
                edit: "Edit HTML"
            },
            colours: {
                title: "Text color",
                black: "Black",
                silver: "Silver",
                gray: "Grey",
                maroon: "Maroon",
                red: "Red",
                purple: "Purple",
                green: "Green",
                olive: "Olive",
                navy: "Navy",
                blue: "Blue",
                orange: "Orange"
            }
        },
        user: {
            insert: "Insert user",
            cancel: "Cancel"
        },
        player: {
            insert: "Insert player",
            cancel: "Cancel"
        },
        news: {
            insert: "Insert news",
            cancel: "Cancel"
        },
        team: {
            insert: "Insert team",
            cancel: "Cancel"
        }
    };

}(window.jQuery, window.wysihtml5);
